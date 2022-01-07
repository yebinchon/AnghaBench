; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_handle_producer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_handle_producer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GCC_PRODUCER = common dso_local global i32 0, align 4
@processing_gcc_compilation = common dso_local global i32 0, align 4
@GPLUS_PRODUCER = common dso_local global i32 0, align 4
@AUTO_DEMANGLING = common dso_local global i64 0, align 8
@LCC_PRODUCER = common dso_local global i32 0, align 4
@LUCID_DEMANGLING_STYLE_STRING = common dso_local global i32 0, align 4
@GNU_DEMANGLING_STYLE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @handle_producer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_producer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @GCC_PRODUCER, align 4
  %6 = load i32, i32* @GCC_PRODUCER, align 4
  %7 = call i64 @strlen(i32 %6)
  %8 = call i64 @DEPRECATED_STREQN(i8* %4, i32 %5, i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @GCC_PRODUCER, align 4
  %13 = call i64 @strlen(i32 %12)
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %3, align 1
  %16 = load i8, i8* %3, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 50
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 2, i32 1
  store i32 %20, i32* @processing_gcc_compilation, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* @GPLUS_PRODUCER, align 4
  %24 = load i32, i32* @GPLUS_PRODUCER, align 4
  %25 = call i64 @strlen(i32 %24)
  %26 = call i64 @strncmp(i8* %22, i32 %23, i64 %25)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* @processing_gcc_compilation, align 4
  br label %29

29:                                               ; preds = %21, %10
  %30 = load i64, i64* @AUTO_DEMANGLING, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* @GPLUS_PRODUCER, align 4
  %35 = load i32, i32* @GPLUS_PRODUCER, align 4
  %36 = call i64 @strlen(i32 %35)
  %37 = call i64 @DEPRECATED_STREQN(i8* %33, i32 %34, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %51

40:                                               ; preds = %32
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* @LCC_PRODUCER, align 4
  %43 = load i32, i32* @LCC_PRODUCER, align 4
  %44 = call i64 @strlen(i32 %43)
  %45 = call i64 @DEPRECATED_STREQN(i8* %41, i32 %42, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @LUCID_DEMANGLING_STYLE_STRING, align 4
  %49 = call i32 @set_demangling_style(i32 %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %29
  ret void
}

declare dso_local i64 @DEPRECATED_STREQN(i8*, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @set_demangling_style(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
