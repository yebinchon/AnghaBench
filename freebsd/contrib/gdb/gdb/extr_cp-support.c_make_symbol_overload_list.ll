; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_make_symbol_overload_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_make_symbol_overload_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.cleanup = type { i32 }

@sym_return_val_size = common dso_local global i32 0, align 4
@sym_return_val_index = common dso_local global i64 0, align 8
@sym_return_val = common dso_local global %struct.symbol** null, align 8
@xfree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol** @make_symbol_overload_list(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 100, i32* @sym_return_val_size, align 4
  store i64 0, i64* @sym_return_val_index, align 8
  %6 = load i32, i32* @sym_return_val_size, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = call %struct.symbol** @xmalloc(i32 %10)
  store %struct.symbol** %11, %struct.symbol*** @sym_return_val, align 8
  %12 = load %struct.symbol**, %struct.symbol*** @sym_return_val, align 8
  %13 = getelementptr inbounds %struct.symbol*, %struct.symbol** %12, i64 0
  store %struct.symbol* null, %struct.symbol** %13, align 8
  %14 = load i32, i32* @xfree, align 4
  %15 = load %struct.symbol**, %struct.symbol*** @sym_return_val, align 8
  %16 = call %struct.cleanup* @make_cleanup(i32 %14, %struct.symbol** %15)
  store %struct.cleanup* %16, %struct.cleanup** %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @make_symbol_overload_list_using(i8* %17, i8* %18)
  %20 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %21 = call i32 @discard_cleanups(%struct.cleanup* %20)
  %22 = load %struct.symbol**, %struct.symbol*** @sym_return_val, align 8
  ret %struct.symbol** %22
}

declare dso_local %struct.symbol** @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.symbol**) #1

declare dso_local i32 @make_symbol_overload_list_using(i8*, i8*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
