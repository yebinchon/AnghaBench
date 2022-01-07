; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_umod.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_umod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.ps_prochandle = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"  %-50s\00", align 1
@PGRAB_RDONLY = common dso_local global i32 0, align 4
@PGRAB_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_print_umod(%struct.TYPE_8__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ps_prochandle*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = inttoptr i64 %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to i64*
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = mul nsw i32 %28, 2
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %35

35:                                               ; preds = %34, %4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @PGRAB_RDONLY, align 4
  %44 = load i32, i32* @PGRAB_FORCE, align 4
  %45 = or i32 %43, %44
  %46 = call %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_8__* %41, i64 %42, i32 %45, i32 0)
  store %struct.ps_prochandle* %46, %struct.ps_prochandle** %15, align 8
  br label %48

47:                                               ; preds = %35
  store %struct.ps_prochandle* null, %struct.ps_prochandle** %15, align 8
  br label %48

48:                                               ; preds = %47, %40
  %49 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %50 = icmp ne %struct.ps_prochandle* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %54 = call i32 @dt_proc_lock(%struct.TYPE_8__* %52, %struct.ps_prochandle* %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %57 = icmp ne %struct.ps_prochandle* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %25 to i32
  %62 = call i64 @Pobjname(%struct.ps_prochandle* %59, i64 %60, i8* %27, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = trunc i64 %30 to i32
  %66 = call i8* @dt_basename(i8* %27)
  %67 = call i32 @snprintf(i8* %31, i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %73

68:                                               ; preds = %58, %55
  %69 = trunc i64 %30 to i32
  %70 = load i64, i64* %10, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @snprintf(i8* %31, i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @dt_printf(%struct.TYPE_8__* %74, i32* %75, i8* %76, i8* %31)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %79 = icmp ne %struct.ps_prochandle* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %83 = call i32 @dt_proc_unlock(%struct.TYPE_8__* %81, %struct.ps_prochandle* %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = load %struct.ps_prochandle*, %struct.ps_prochandle** %15, align 8
  %86 = call i32 @dt_proc_release(%struct.TYPE_8__* %84, %struct.ps_prochandle* %85)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load i32, i32* %11, align 4
  %89 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %89)
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ps_prochandle* @dt_proc_grab(%struct.TYPE_8__*, i64, i32, i32) #2

declare dso_local i32 @dt_proc_lock(%struct.TYPE_8__*, %struct.ps_prochandle*) #2

declare dso_local i64 @Pobjname(%struct.ps_prochandle*, i64, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dt_basename(i8*) #2

declare dso_local i32 @dt_printf(%struct.TYPE_8__*, i32*, i8*, i8*) #2

declare dso_local i32 @dt_proc_unlock(%struct.TYPE_8__*, %struct.ps_prochandle*) #2

declare dso_local i32 @dt_proc_release(%struct.TYPE_8__*, %struct.ps_prochandle*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
