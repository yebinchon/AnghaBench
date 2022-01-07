; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_overload_list_add_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_overload_list_add_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }

@sym_return_val_index = common dso_local global i32 0, align 4
@sym_return_val = common dso_local global %struct.symbol** null, align 8
@sym_return_val_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*, i8*)* @overload_list_add_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overload_list_add_symbol(%struct.symbol* %0, i8* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.symbol*, %struct.symbol** %3, align 8
  %9 = call i32* @SYMBOL_TYPE(%struct.symbol* %8)
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %77

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @sym_return_val_index, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.symbol*, %struct.symbol** %3, align 8
  %19 = call i8* @SYMBOL_LINKAGE_NAME(%struct.symbol* %18)
  %20 = load %struct.symbol**, %struct.symbol*** @sym_return_val, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.symbol*, %struct.symbol** %20, i64 %22
  %24 = load %struct.symbol*, %struct.symbol** %23, align 8
  %25 = call i8* @SYMBOL_LINKAGE_NAME(%struct.symbol* %24)
  %26 = call i64 @strcmp(i8* %19, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %77

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.symbol*, %struct.symbol** %3, align 8
  %35 = call i32 @SYMBOL_NATURAL_NAME(%struct.symbol* %34)
  %36 = call i8* @remove_params(i32 %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %77

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @xfree(i8* %46)
  br label %77

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @xfree(i8* %49)
  %51 = load i32, i32* @sym_return_val_index, align 4
  %52 = add nsw i32 %51, 3
  %53 = load i32, i32* @sym_return_val_size, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load i32, i32* @sym_return_val_size, align 4
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* @sym_return_val_size, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load %struct.symbol**, %struct.symbol*** @sym_return_val, align 8
  %62 = bitcast %struct.symbol** %61 to i8*
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @xrealloc(i8* %62, i32 %63)
  %65 = inttoptr i64 %64 to %struct.symbol**
  store %struct.symbol** %65, %struct.symbol*** @sym_return_val, align 8
  br label %66

66:                                               ; preds = %55, %48
  %67 = load %struct.symbol*, %struct.symbol** %3, align 8
  %68 = load %struct.symbol**, %struct.symbol*** @sym_return_val, align 8
  %69 = load i32, i32* @sym_return_val_index, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @sym_return_val_index, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %struct.symbol*, %struct.symbol** %68, i64 %71
  store %struct.symbol* %67, %struct.symbol** %72, align 8
  %73 = load %struct.symbol**, %struct.symbol*** @sym_return_val, align 8
  %74 = load i32, i32* @sym_return_val_index, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.symbol*, %struct.symbol** %73, i64 %75
  store %struct.symbol* null, %struct.symbol** %76, align 8
  br label %77

77:                                               ; preds = %66, %45, %39, %28, %11
  ret void
}

declare dso_local i32* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @SYMBOL_LINKAGE_NAME(%struct.symbol*) #1

declare dso_local i8* @remove_params(i32) #1

declare dso_local i32 @SYMBOL_NATURAL_NAME(%struct.symbol*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
