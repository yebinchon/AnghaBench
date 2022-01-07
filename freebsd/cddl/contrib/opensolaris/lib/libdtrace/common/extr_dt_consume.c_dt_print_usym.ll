; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_usym.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_usym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.ps_prochandle = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"  %-50s\00", align 1
@DTRACEACT_USYM = common dso_local global i64 0, align 8
@PGRAB_RDONLY = common dso_local global i32 0, align 4
@PGRAB_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i64, i64)* @dt_print_usym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_print_usym(%struct.TYPE_11__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ps_prochandle*, align 8
  %16 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %7, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 256, i32* %14, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @DTRACEACT_USYM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @PGRAB_RDONLY, align 4
  %37 = load i32, i32* @PGRAB_FORCE, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_11__* %34, i32 %35, i32 %38, i32 0)
  store %struct.ps_prochandle* %39, %struct.ps_prochandle** %15, align 8
  %40 = icmp ne %struct.ps_prochandle* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %33
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %44 = call i32 @dt_proc_lock(%struct.TYPE_11__* %42, %struct.ps_prochandle* %43)
  %45 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @Plookup_by_addr(%struct.ps_prochandle* %45, i32 %46, i32* null, i32 0, %struct.TYPE_12__* %16)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %55 = call i32 @dt_proc_unlock(%struct.TYPE_11__* %53, %struct.ps_prochandle* %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %58 = call i32 @dt_proc_release(%struct.TYPE_11__* %56, %struct.ps_prochandle* %57)
  br label %59

59:                                               ; preds = %52, %33
  br label %60

60:                                               ; preds = %59, %28, %4
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i8* @alloca(i32 %63)
  store i8* %64, i8** %12, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @dtrace_uaddr2str(%struct.TYPE_11__* %66, i32 %67, i32 %68, i8* %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %61, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @dt_printf(%struct.TYPE_11__* %75, i32* %76, i8* %77, i8* %78)
  ret i32 %79
}

declare dso_local %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @dt_proc_lock(%struct.TYPE_11__*, %struct.ps_prochandle*) #1

declare dso_local i64 @Plookup_by_addr(%struct.ps_prochandle*, i32, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @dt_proc_unlock(%struct.TYPE_11__*, %struct.ps_prochandle*) #1

declare dso_local i32 @dt_proc_release(%struct.TYPE_11__*, %struct.ps_prochandle*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @dtrace_uaddr2str(%struct.TYPE_11__*, i32, i32, i8*, i32) #1

declare dso_local i32 @dt_printf(%struct.TYPE_11__*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
