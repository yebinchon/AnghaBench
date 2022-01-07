; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_ld_st_interleave.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_ld_st_interleave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.neon_type_el = type { i64, i32 }

@NS_NULL = common dso_local global i32 0, align 4
@N_8 = common dso_local global i32 0, align 4
@N_16 = common dso_local global i32 0, align 4
@N_32 = common dso_local global i32 0, align 4
@N_64 = common dso_local global i32 0, align 4
@__const.do_neon_ld_st_interleave.typetable = private unnamed_addr constant [32 x i32] [i32 7, i32 -1, i32 10, i32 -1, i32 6, i32 -1, i32 2, i32 -1, i32 -1, i32 -1, i32 8, i32 9, i32 -1, i32 -1, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 4, i32 5, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1], align 16
@NT_invtype = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"bad alignment\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"bad list type for instruction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_ld_st_interleave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_ld_st_interleave() #0 {
  %1 = alloca %struct.neon_type_el, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i32], align 16
  %5 = alloca i32, align 4
  %6 = load i32, i32* @NS_NULL, align 4
  %7 = load i32, i32* @N_8, align 4
  %8 = load i32, i32* @N_16, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @N_32, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @N_64, align 4
  %13 = or i32 %11, %12
  %14 = call { i64, i32 } @neon_check_type(i32 1, i32 %6, i32 %13)
  %15 = bitcast %struct.neon_type_el* %1 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i32 } %14, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i32 } %14, 1
  store i32 %19, i32* %18, align 8
  store i32 0, i32* %2, align 4
  %20 = bitcast [32 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([32 x i32]* @__const.do_neon_ld_st_interleave.typetable to i8*), i64 128, i1 false)
  %21 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NT_invtype, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  br label %99

26:                                               ; preds = %0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 8
  switch i32 %37, label %57 [
    i32 64, label %38
    i32 128, label %39
    i32 256, label %48
  ]

38:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %61

39:                                               ; preds = %32
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @NEON_REGLIST_LENGTH(i32 %43)
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %58

47:                                               ; preds = %39
  store i32 2, i32* %2, align 4
  br label %61

48:                                               ; preds = %32
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @NEON_REGLIST_LENGTH(i32 %52)
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %58

56:                                               ; preds = %48
  store i32 3, i32* %2, align 4
  br label %61

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %55, %46
  %59 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @first_error(i32 %59)
  br label %99

61:                                               ; preds = %56, %47, %38
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32, i32* %2, align 4
  %64 = shl i32 %63, 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %66 = or i32 %65, %64
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %67 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %1, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @neon_logbits(i32 %68)
  %70 = shl i32 %69, 6
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %72 = or i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 7
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %80 = lshr i32 %79, 8
  %81 = and i32 %80, 3
  %82 = shl i32 %81, 3
  %83 = or i32 %78, %82
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, -1
  %90 = zext i1 %89 to i32
  %91 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %92 = call i32 @constraint(i32 %90, i32 %91)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %94 = and i32 %93, -3841
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %95 = load i32, i32* %5, align 4
  %96 = shl i32 %95, 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %98 = or i32 %97, %96
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %99

99:                                               ; preds = %62, %58, %25
  ret void
}

declare dso_local { i64, i32 } @neon_check_type(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NEON_REGLIST_LENGTH(i32) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @neon_logbits(i32) #1

declare dso_local i32 @constraint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
