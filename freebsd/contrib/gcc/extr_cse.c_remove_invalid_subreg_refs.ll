; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_remove_invalid_subreg_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_remove_invalid_subreg_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i32, %struct.table_elt* }

@HASH_SIZE = common dso_local global i32 0, align 4
@table = common dso_local global %struct.table_elt** null, align 8
@SUBREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @remove_invalid_subreg_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_invalid_subreg_refs(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.table_elt*, align 8
  %9 = alloca %struct.table_elt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @GET_MODE_SIZE(i32 %13)
  %15 = sub nsw i32 %14, 1
  %16 = add i32 %12, %15
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %88, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @HASH_SIZE, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %91

21:                                               ; preds = %17
  %22 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %22, i64 %24
  %26 = load %struct.table_elt*, %struct.table_elt** %25, align 8
  store %struct.table_elt* %26, %struct.table_elt** %8, align 8
  br label %27

27:                                               ; preds = %85, %21
  %28 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %29 = icmp ne %struct.table_elt* %28, null
  br i1 %29, label %30, label %87

30:                                               ; preds = %27
  %31 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %32 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %35 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %34, i32 0, i32 1
  %36 = load %struct.table_elt*, %struct.table_elt** %35, align 8
  store %struct.table_elt* %36, %struct.table_elt** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @REG_P(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %84, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @SUBREG, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %71, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @SUBREG_REG(i32 %46)
  %48 = call i32 @REG_P(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @SUBREG_REG(i32 %51)
  %53 = call i32 @REGNO(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %71, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @SUBREG_BYTE(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @GET_MODE(i32 %59)
  %61 = call i32 @GET_MODE_SIZE(i32 %60)
  %62 = sub nsw i32 %61, 1
  %63 = add i32 %58, %62
  %64 = load i32, i32* %5, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @SUBREG_BYTE(i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ule i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %66, %50, %45, %40
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = add i32 %73, 1
  %75 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %76 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @refers_to_regno_p(i32 %72, i32 %74, i32 %77, i32* null)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @remove_from_table(%struct.table_elt* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %71, %66, %56, %30
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.table_elt*, %struct.table_elt** %9, align 8
  store %struct.table_elt* %86, %struct.table_elt** %8, align 8
  br label %27

87:                                               ; preds = %27
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %17

91:                                               ; preds = %17
  ret void
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @refers_to_regno_p(i32, i32, i32, i32*) #1

declare dso_local i32 @remove_from_table(%struct.table_elt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
