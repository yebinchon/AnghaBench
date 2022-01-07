; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_set_block_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_set_block_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.obstack = type { i32 }

@processing_has_namespace_info = common dso_local global i64 0, align 8
@processing_current_prefix = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_set_block_scope(%struct.symbol* %0, %struct.block* %1, %struct.obstack* %2) #0 {
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.obstack*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  store %struct.obstack* %2, %struct.obstack** %6, align 8
  %9 = load %struct.symbol*, %struct.symbol** %4, align 8
  %10 = call i8* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.symbol* %9)
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load i64, i64* @processing_has_namespace_info, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.block*, %struct.block** %5, align 8
  %17 = load i8*, i8** @processing_current_prefix, align 8
  %18 = load i8*, i8** @processing_current_prefix, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load %struct.obstack*, %struct.obstack** %6, align 8
  %21 = call i32 @obsavestring(i8* %17, i32 %19, %struct.obstack* %20)
  %22 = load %struct.obstack*, %struct.obstack** %6, align 8
  %23 = call i32 @block_set_scope(%struct.block* %16, i32 %21, %struct.obstack* %22)
  br label %36

24:                                               ; preds = %12
  %25 = load %struct.symbol*, %struct.symbol** %4, align 8
  %26 = call i8* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.symbol* %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @cp_entire_prefix_len(i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.block*, %struct.block** %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.obstack*, %struct.obstack** %6, align 8
  %33 = call i32 @obsavestring(i8* %30, i32 %31, %struct.obstack* %32)
  %34 = load %struct.obstack*, %struct.obstack** %6, align 8
  %35 = call i32 @block_set_scope(%struct.block* %29, i32 %33, %struct.obstack* %34)
  br label %36

36:                                               ; preds = %24, %15
  br label %37

37:                                               ; preds = %36, %3
  ret void
}

declare dso_local i8* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.symbol*) #1

declare dso_local i32 @block_set_scope(%struct.block*, i32, %struct.obstack*) #1

declare dso_local i32 @obsavestring(i8*, i32, %struct.obstack*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cp_entire_prefix_len(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
