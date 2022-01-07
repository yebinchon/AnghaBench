; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_classify_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_classify_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_syment = type { i32, i64, i64 }

@COFF_SYMBOL_UNDEFINED = common dso_local global i32 0, align 4
@COFF_SYMBOL_COMMON = common dso_local global i32 0, align 4
@COFF_SYMBOL_GLOBAL = common dso_local global i32 0, align 4
@SYMNMLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"warning: %B: local symbol `%s' has no section\00", align 1
@COFF_SYMBOL_LOCAL = common dso_local global i32 0, align 4
@COFF_SYMBOL_PE_SECTION = common dso_local global i32 0, align 4
@C_SECTION = common dso_local global i32 0, align 4
@C_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.internal_syment*)* @coff_classify_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_classify_symbol(i32* %0, %struct.internal_syment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.internal_syment*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.internal_syment* %1, %struct.internal_syment** %5, align 8
  %8 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %9 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %27 [
    i32 134, label %11
    i32 128, label %11
    i32 131, label %11
  ]

11:                                               ; preds = %2, %2, %2
  %12 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %13 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %18 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @COFF_SYMBOL_UNDEFINED, align 4
  store i32 %22, i32* %3, align 4
  br label %48

23:                                               ; preds = %16
  %24 = load i32, i32* @COFF_SYMBOL_COMMON, align 4
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %11
  %26 = load i32, i32* @COFF_SYMBOL_GLOBAL, align 4
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %30 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load i32, i32* @SYMNMLEN, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %6, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %7, align 8
  %39 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %43 = call i32 @_bfd_coff_internal_syment_name(i32* %41, %struct.internal_syment* %42, i8* %38)
  %44 = call i32 @_bfd_error_handler(i32 %39, i32* %40, i32 %43)
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  br label %46

46:                                               ; preds = %33, %28
  %47 = load i32, i32* @COFF_SYMBOL_LOCAL, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %25, %23, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @_bfd_coff_internal_syment_name(i32*, %struct.internal_syment*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
