; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_create_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_create_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 (%struct.TYPE_17__*, i32, i64, %struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"die %llu <%llx>: create_one\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"illegal die offset %llu (max %llu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"die %llu: ignoring tag type %x\0A\00", align 1
@DW_F_NOTDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32)* @die_create_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_create_one(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @die_off(%struct.TYPE_17__* %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @debug(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @terminate(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %21, i64 %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @die_tag(%struct.TYPE_17__* %27, i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call %struct.TYPE_18__* @die_tag2ctor(i64 %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %6, align 8
  %32 = icmp eq %struct.TYPE_18__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @debug(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %34, i64 %35)
  br label %75

37:                                               ; preds = %26
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call %struct.TYPE_16__* @tdesc_lookup(%struct.TYPE_17__* %38, i64 %39)
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %8, align 8
  %41 = icmp eq %struct.TYPE_16__* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DW_F_NOTDP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = call %struct.TYPE_16__* @xcalloc(i32 16)
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %8, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = call i32 @tdesc_add(%struct.TYPE_17__* %54, %struct.TYPE_16__* %55)
  br label %57

57:                                               ; preds = %49, %42, %37
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = icmp ne %struct.TYPE_16__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @die_name(%struct.TYPE_17__* %61, i32 %62)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %57
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_17__*, i32, i64, %struct.TYPE_16__*)*, i32 (%struct.TYPE_17__*, i32, i64, %struct.TYPE_16__*)** %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = call i32 %69(%struct.TYPE_17__* %70, i32 %71, i64 %72, %struct.TYPE_16__* %73)
  br label %75

75:                                               ; preds = %66, %33
  ret void
}

declare dso_local i64 @die_off(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @debug(i32, i8*, i64, i64) #1

declare dso_local i32 @terminate(i8*, i64, i64) #1

declare dso_local i64 @die_tag(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_18__* @die_tag2ctor(i64) #1

declare dso_local %struct.TYPE_16__* @tdesc_lookup(%struct.TYPE_17__*, i64) #1

declare dso_local %struct.TYPE_16__* @xcalloc(i32) #1

declare dso_local i32 @tdesc_add(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @die_name(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
