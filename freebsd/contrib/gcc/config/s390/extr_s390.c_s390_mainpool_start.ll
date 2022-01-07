; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_mainpool_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_mainpool_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { i32, i64 }

@INSN = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@UNSPEC_VOLATILE = common dso_local global i64 0, align 8
@UNSPECV_MAIN_POOL = common dso_local global i64 0, align 8
@TARGET_CPU_ZARCH = common dso_local global i32 0, align 4
@CALL_INSN = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.constant_pool* ()* @s390_mainpool_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.constant_pool* @s390_mainpool_start() #0 {
  %1 = alloca %struct.constant_pool*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = call %struct.constant_pool* (...) @s390_alloc_pool()
  store %struct.constant_pool* %6, %struct.constant_pool** %1, align 8
  %7 = call i64 (...) @get_insns()
  store i64 %7, i64* %2, align 8
  br label %8

8:                                                ; preds = %87, %0
  %9 = load i64, i64* %2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %90

11:                                               ; preds = %8
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @GET_CODE(i64 %12)
  %14 = load i64, i64* @INSN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @PATTERN(i64 %17)
  %19 = call i64 @GET_CODE(i64 %18)
  %20 = load i64, i64* @SET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load i64, i64* %2, align 8
  %24 = call i64 @PATTERN(i64 %23)
  %25 = call i64 @SET_SRC(i64 %24)
  %26 = call i64 @GET_CODE(i64 %25)
  %27 = load i64, i64* @UNSPEC_VOLATILE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load i64, i64* %2, align 8
  %31 = call i64 @PATTERN(i64 %30)
  %32 = call i64 @SET_SRC(i64 %31)
  %33 = call i64 @XINT(i64 %32, i32 1)
  %34 = load i64, i64* @UNSPECV_MAIN_POOL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %38 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = load i64, i64* %2, align 8
  %45 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %46 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %36, %29, %22, %16, %11
  %48 = load i32, i32* @TARGET_CPU_ZARCH, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %2, align 8
  %52 = call i64 @s390_execute_label(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @s390_add_execute(%struct.constant_pool* %55, i64 %56)
  br label %86

58:                                               ; preds = %50, %47
  %59 = load i64, i64* %2, align 8
  %60 = call i64 @GET_CODE(i64 %59)
  %61 = load i64, i64* @INSN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %2, align 8
  %65 = call i64 @GET_CODE(i64 %64)
  %66 = load i64, i64* @CALL_INSN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %63, %58
  %69 = load i64, i64* @NULL_RTX, align 8
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %2, align 8
  %71 = call i64 @PATTERN(i64 %70)
  %72 = call i32 @find_constant_pool_ref(i64 %71, i64* %3)
  %73 = load i64, i64* %3, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i64, i64* %3, align 8
  %77 = call i64 @get_pool_constant(i64 %76)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @get_pool_mode(i64 %78)
  store i32 %79, i32* %5, align 4
  %80 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %81 = load i64, i64* %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @s390_add_constant(%struct.constant_pool* %80, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %68
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %54
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %2, align 8
  %89 = call i64 @NEXT_INSN(i64 %88)
  store i64 %89, i64* %2, align 8
  br label %8

90:                                               ; preds = %8
  %91 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %92 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %97 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 0
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i1 [ true, %90 ], [ %99, %95 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @gcc_assert(i32 %102)
  %104 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %105 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sge i32 %106, 4096
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %110 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @remove_insn(i64 %111)
  %113 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %114 = call i32 @s390_free_pool(%struct.constant_pool* %113)
  store %struct.constant_pool* null, %struct.constant_pool** %1, align 8
  br label %115

115:                                              ; preds = %108, %100
  %116 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  ret %struct.constant_pool* %116
}

declare dso_local %struct.constant_pool* @s390_alloc_pool(...) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @XINT(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @s390_execute_label(i64) #1

declare dso_local i32 @s390_add_execute(%struct.constant_pool*, i64) #1

declare dso_local i32 @find_constant_pool_ref(i64, i64*) #1

declare dso_local i64 @get_pool_constant(i64) #1

declare dso_local i32 @get_pool_mode(i64) #1

declare dso_local i32 @s390_add_constant(%struct.constant_pool*, i64, i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @remove_insn(i64) #1

declare dso_local i32 @s390_free_pool(%struct.constant_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
