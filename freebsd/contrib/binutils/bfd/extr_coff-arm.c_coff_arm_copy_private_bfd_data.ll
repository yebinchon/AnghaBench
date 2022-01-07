; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_coff_arm_copy_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coff-arm.c_coff_arm_copy_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"Warning: Clearing the interworking flag of %B because non-interworking code in %B has been linked with it\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_14__*)* @coff_arm_copy_private_bfd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_arm_copy_private_bfd_data(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %7 = icmp ne %struct.TYPE_14__* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @BFD_ASSERT(i32 %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = icmp eq %struct.TYPE_14__* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %3, align 4
  br label %109

20:                                               ; preds = %11
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %3, align 4
  br label %109

30:                                               ; preds = %20
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = call i64 @APCS_SET(%struct.TYPE_14__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = call i64 @APCS_SET(%struct.TYPE_14__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = call i32 @APCS_26_FLAG(%struct.TYPE_14__* %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = call i32 @APCS_26_FLAG(%struct.TYPE_14__* %41)
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %109

46:                                               ; preds = %38
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = call i32 @APCS_FLOAT_FLAG(%struct.TYPE_14__* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = call i32 @APCS_FLOAT_FLAG(%struct.TYPE_14__* %49)
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %3, align 4
  br label %109

54:                                               ; preds = %46
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = call i32 @PIC_FLAG(%struct.TYPE_14__* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = call i32 @PIC_FLAG(%struct.TYPE_14__* %57)
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %109

62:                                               ; preds = %54
  br label %74

63:                                               ; preds = %34
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = call i32 @APCS_26_FLAG(%struct.TYPE_14__* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = call i32 @APCS_FLOAT_FLAG(%struct.TYPE_14__* %67)
  %69 = or i32 %66, %68
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = call i32 @PIC_FLAG(%struct.TYPE_14__* %70)
  %72 = or i32 %69, %71
  %73 = call i32 @SET_APCS_FLAGS(%struct.TYPE_14__* %64, i32 %72)
  br label %74

74:                                               ; preds = %63, %62
  br label %75

75:                                               ; preds = %74, %30
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = call i64 @INTERWORK_SET(%struct.TYPE_14__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = call i64 @INTERWORK_SET(%struct.TYPE_14__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = call i64 @INTERWORK_FLAG(%struct.TYPE_14__* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = call i64 @INTERWORK_FLAG(%struct.TYPE_14__* %86)
  %88 = icmp ne i64 %85, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = call i64 @INTERWORK_FLAG(%struct.TYPE_14__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = call i32 @_bfd_error_handler(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %94, %struct.TYPE_14__* %95)
  br label %97

97:                                               ; preds = %93, %89
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = call i32 @SET_INTERWORK_FLAG(%struct.TYPE_14__* %98, i64 0)
  br label %100

100:                                              ; preds = %97, %83
  br label %106

101:                                              ; preds = %79
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = call i64 @INTERWORK_FLAG(%struct.TYPE_14__* %103)
  %105 = call i32 @SET_INTERWORK_FLAG(%struct.TYPE_14__* %102, i64 %104)
  br label %106

106:                                              ; preds = %101, %100
  br label %107

107:                                              ; preds = %106, %75
  %108 = load i32, i32* @TRUE, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %60, %52, %44, %28, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @APCS_SET(%struct.TYPE_14__*) #1

declare dso_local i32 @APCS_26_FLAG(%struct.TYPE_14__*) #1

declare dso_local i32 @APCS_FLOAT_FLAG(%struct.TYPE_14__*) #1

declare dso_local i32 @PIC_FLAG(%struct.TYPE_14__*) #1

declare dso_local i32 @SET_APCS_FLAGS(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @INTERWORK_SET(%struct.TYPE_14__*) #1

declare dso_local i64 @INTERWORK_FLAG(%struct.TYPE_14__*) #1

declare dso_local i32 @_bfd_error_handler(i8*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @SET_INTERWORK_FLAG(%struct.TYPE_14__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
