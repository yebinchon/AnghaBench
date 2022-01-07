; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_lookup_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_lookup_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { %struct.expr*, i32 }
%struct.hash_table = type { %struct.expr**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (i32, %struct.hash_table*)* @lookup_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @lookup_set(i32 %0, %struct.hash_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hash_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.expr*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hash_table* %1, %struct.hash_table** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @hash_set(i32 %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %12, i32 0, i32 0
  %14 = load %struct.expr**, %struct.expr*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.expr*, %struct.expr** %14, i64 %16
  %18 = load %struct.expr*, %struct.expr** %17, align 8
  store %struct.expr* %18, %struct.expr** %6, align 8
  br label %19

19:                                               ; preds = %32, %2
  %20 = load %struct.expr*, %struct.expr** %6, align 8
  %21 = icmp ne %struct.expr* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.expr*, %struct.expr** %6, align 8
  %24 = getelementptr inbounds %struct.expr, %struct.expr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SET_DEST(i32 %25)
  %27 = call i32 @REGNO(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %27, %28
  br label %30

30:                                               ; preds = %22, %19
  %31 = phi i1 [ false, %19 ], [ %29, %22 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load %struct.expr*, %struct.expr** %6, align 8
  %34 = getelementptr inbounds %struct.expr, %struct.expr* %33, i32 0, i32 0
  %35 = load %struct.expr*, %struct.expr** %34, align 8
  store %struct.expr* %35, %struct.expr** %6, align 8
  br label %19

36:                                               ; preds = %30
  %37 = load %struct.expr*, %struct.expr** %6, align 8
  ret %struct.expr* %37
}

declare dso_local i32 @hash_set(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
