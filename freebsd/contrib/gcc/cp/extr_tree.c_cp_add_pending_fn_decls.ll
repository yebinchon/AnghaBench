; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_cp_add_pending_fn_decls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_cp_add_pending_fn_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saved_scope = type { i64, %struct.saved_scope* }

@scope_chain = common dso_local global %struct.saved_scope* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cp_add_pending_fn_decls(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.saved_scope*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load %struct.saved_scope*, %struct.saved_scope** @scope_chain, align 8
  store %struct.saved_scope* %9, %struct.saved_scope** %6, align 8
  br label %10

10:                                               ; preds = %35, %2
  %11 = load %struct.saved_scope*, %struct.saved_scope** %6, align 8
  %12 = icmp ne %struct.saved_scope* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load %struct.saved_scope*, %struct.saved_scope** %6, align 8
  %15 = getelementptr inbounds %struct.saved_scope, %struct.saved_scope* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.saved_scope*, %struct.saved_scope** %6, align 8
  %20 = getelementptr inbounds %struct.saved_scope, %struct.saved_scope* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.saved_scope*, %struct.saved_scope** %6, align 8
  %28 = getelementptr inbounds %struct.saved_scope, %struct.saved_scope* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @VARRAY_PUSH_TREE(i32 %26, i64 %29)
  %31 = load %struct.saved_scope*, %struct.saved_scope** %6, align 8
  %32 = getelementptr inbounds %struct.saved_scope, %struct.saved_scope* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %24, %18, %13
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.saved_scope*, %struct.saved_scope** %6, align 8
  %37 = getelementptr inbounds %struct.saved_scope, %struct.saved_scope* %36, i32 0, i32 1
  %38 = load %struct.saved_scope*, %struct.saved_scope** %37, align 8
  store %struct.saved_scope* %38, %struct.saved_scope** %6, align 8
  br label %10

39:                                               ; preds = %10
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i32 @VARRAY_PUSH_TREE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
