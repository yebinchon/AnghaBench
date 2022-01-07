; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_eliminate_dups2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_expr.c_expr_eliminate_dups2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.expr* }
%struct.TYPE_3__ = type { %struct.expr* }

@E_NOT = common dso_local global i32 0, align 4
@symbol_no = common dso_local global i32 0, align 4
@trans_count = common dso_local global i32 0, align 4
@symbol_yes = common dso_local global i32 0, align 4
@e1 = common dso_local global %struct.expr* null, align 8
@e2 = common dso_local global %struct.expr* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.expr**, %struct.expr**)* @expr_eliminate_dups2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_eliminate_dups2(i32 %0, %struct.expr** %1, %struct.expr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.expr**, align 8
  %6 = alloca %struct.expr**, align 8
  %7 = alloca %struct.expr*, align 8
  %8 = alloca %struct.expr*, align 8
  %9 = alloca %struct.expr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.expr** %1, %struct.expr*** %5, align 8
  store %struct.expr** %2, %struct.expr*** %6, align 8
  %10 = load %struct.expr**, %struct.expr*** %5, align 8
  %11 = load %struct.expr*, %struct.expr** %10, align 8
  %12 = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.expr**, %struct.expr*** %5, align 8
  %19 = load %struct.expr*, %struct.expr** %18, align 8
  %20 = getelementptr inbounds %struct.expr, %struct.expr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.expr**, %struct.expr*** %6, align 8
  call void @expr_eliminate_dups2(i32 %17, %struct.expr** %21, %struct.expr** %22)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.expr**, %struct.expr*** %5, align 8
  %25 = load %struct.expr*, %struct.expr** %24, align 8
  %26 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.expr**, %struct.expr*** %6, align 8
  call void @expr_eliminate_dups2(i32 %23, %struct.expr** %27, %struct.expr** %28)
  br label %132

29:                                               ; preds = %3
  %30 = load %struct.expr**, %struct.expr*** %6, align 8
  %31 = load %struct.expr*, %struct.expr** %30, align 8
  %32 = getelementptr inbounds %struct.expr, %struct.expr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.expr**, %struct.expr*** %5, align 8
  %39 = load %struct.expr**, %struct.expr*** %6, align 8
  %40 = load %struct.expr*, %struct.expr** %39, align 8
  %41 = getelementptr inbounds %struct.expr, %struct.expr* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  call void @expr_eliminate_dups2(i32 %37, %struct.expr** %38, %struct.expr** %42)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.expr**, %struct.expr*** %5, align 8
  %45 = load %struct.expr**, %struct.expr*** %6, align 8
  %46 = load %struct.expr*, %struct.expr** %45, align 8
  %47 = getelementptr inbounds %struct.expr, %struct.expr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  call void @expr_eliminate_dups2(i32 %43, %struct.expr** %44, %struct.expr** %48)
  br label %49

49:                                               ; preds = %36, %29
  %50 = load %struct.expr**, %struct.expr*** %5, align 8
  %51 = load %struct.expr*, %struct.expr** %50, align 8
  %52 = load %struct.expr**, %struct.expr*** %6, align 8
  %53 = load %struct.expr*, %struct.expr** %52, align 8
  %54 = icmp eq %struct.expr* %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %132

56:                                               ; preds = %49
  %57 = load %struct.expr**, %struct.expr*** %5, align 8
  %58 = load %struct.expr*, %struct.expr** %57, align 8
  %59 = getelementptr inbounds %struct.expr, %struct.expr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %131 [
    i32 128, label %61
    i32 129, label %96
  ]

61:                                               ; preds = %56
  %62 = load %struct.expr**, %struct.expr*** %5, align 8
  %63 = load %struct.expr*, %struct.expr** %62, align 8
  %64 = getelementptr inbounds %struct.expr, %struct.expr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.expr**, %struct.expr*** %5, align 8
  %67 = load %struct.expr**, %struct.expr*** %5, align 8
  call void @expr_eliminate_dups2(i32 %65, %struct.expr** %66, %struct.expr** %67)
  %68 = load i32, i32* @E_NOT, align 4
  %69 = load %struct.expr**, %struct.expr*** %5, align 8
  %70 = load %struct.expr*, %struct.expr** %69, align 8
  %71 = call %struct.expr* @expr_copy(%struct.expr* %70)
  %72 = call i32 @expr_alloc_one(i32 %68, %struct.expr* %71)
  %73 = call %struct.expr* @expr_transform(i32 %72)
  store %struct.expr* %73, %struct.expr** %8, align 8
  %74 = load %struct.expr**, %struct.expr*** %6, align 8
  %75 = load %struct.expr*, %struct.expr** %74, align 8
  %76 = call %struct.expr* @expr_copy(%struct.expr* %75)
  store %struct.expr* %76, %struct.expr** %9, align 8
  %77 = call %struct.expr* @expr_extract_eq_and(%struct.expr** %8, %struct.expr** %9)
  store %struct.expr* %77, %struct.expr** %7, align 8
  %78 = load %struct.expr*, %struct.expr** %8, align 8
  %79 = call i32 @expr_is_yes(%struct.expr* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %61
  %82 = load %struct.expr**, %struct.expr*** %5, align 8
  %83 = load %struct.expr*, %struct.expr** %82, align 8
  %84 = call i32 @expr_free(%struct.expr* %83)
  %85 = call %struct.expr* @expr_alloc_symbol(i32* @symbol_no)
  %86 = load %struct.expr**, %struct.expr*** %5, align 8
  store %struct.expr* %85, %struct.expr** %86, align 8
  %87 = load i32, i32* @trans_count, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @trans_count, align 4
  br label %89

89:                                               ; preds = %81, %61
  %90 = load %struct.expr*, %struct.expr** %9, align 8
  %91 = call i32 @expr_free(%struct.expr* %90)
  %92 = load %struct.expr*, %struct.expr** %8, align 8
  %93 = call i32 @expr_free(%struct.expr* %92)
  %94 = load %struct.expr*, %struct.expr** %7, align 8
  %95 = call i32 @expr_free(%struct.expr* %94)
  br label %132

96:                                               ; preds = %56
  %97 = load %struct.expr**, %struct.expr*** %5, align 8
  %98 = load %struct.expr*, %struct.expr** %97, align 8
  %99 = getelementptr inbounds %struct.expr, %struct.expr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.expr**, %struct.expr*** %5, align 8
  %102 = load %struct.expr**, %struct.expr*** %5, align 8
  call void @expr_eliminate_dups2(i32 %100, %struct.expr** %101, %struct.expr** %102)
  %103 = load i32, i32* @E_NOT, align 4
  %104 = load %struct.expr**, %struct.expr*** %5, align 8
  %105 = load %struct.expr*, %struct.expr** %104, align 8
  %106 = call %struct.expr* @expr_copy(%struct.expr* %105)
  %107 = call i32 @expr_alloc_one(i32 %103, %struct.expr* %106)
  %108 = call %struct.expr* @expr_transform(i32 %107)
  store %struct.expr* %108, %struct.expr** %8, align 8
  %109 = load %struct.expr**, %struct.expr*** %6, align 8
  %110 = load %struct.expr*, %struct.expr** %109, align 8
  %111 = call %struct.expr* @expr_copy(%struct.expr* %110)
  store %struct.expr* %111, %struct.expr** %9, align 8
  %112 = call %struct.expr* @expr_extract_eq_or(%struct.expr** %8, %struct.expr** %9)
  store %struct.expr* %112, %struct.expr** %7, align 8
  %113 = load %struct.expr*, %struct.expr** %8, align 8
  %114 = call i32 @expr_is_no(%struct.expr* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %96
  %117 = load %struct.expr**, %struct.expr*** %5, align 8
  %118 = load %struct.expr*, %struct.expr** %117, align 8
  %119 = call i32 @expr_free(%struct.expr* %118)
  %120 = call %struct.expr* @expr_alloc_symbol(i32* @symbol_yes)
  %121 = load %struct.expr**, %struct.expr*** %5, align 8
  store %struct.expr* %120, %struct.expr** %121, align 8
  %122 = load i32, i32* @trans_count, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @trans_count, align 4
  br label %124

124:                                              ; preds = %116, %96
  %125 = load %struct.expr*, %struct.expr** %9, align 8
  %126 = call i32 @expr_free(%struct.expr* %125)
  %127 = load %struct.expr*, %struct.expr** %8, align 8
  %128 = call i32 @expr_free(%struct.expr* %127)
  %129 = load %struct.expr*, %struct.expr** %7, align 8
  %130 = call i32 @expr_free(%struct.expr* %129)
  br label %132

131:                                              ; preds = %56
  br label %132

132:                                              ; preds = %16, %55, %131, %124, %89
  ret void
}

declare dso_local %struct.expr* @expr_transform(i32) #1

declare dso_local i32 @expr_alloc_one(i32, %struct.expr*) #1

declare dso_local %struct.expr* @expr_copy(%struct.expr*) #1

declare dso_local %struct.expr* @expr_extract_eq_and(%struct.expr**, %struct.expr**) #1

declare dso_local i32 @expr_is_yes(%struct.expr*) #1

declare dso_local i32 @expr_free(%struct.expr*) #1

declare dso_local %struct.expr* @expr_alloc_symbol(i32*) #1

declare dso_local %struct.expr* @expr_extract_eq_or(%struct.expr**, %struct.expr**) #1

declare dso_local i32 @expr_is_no(%struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
