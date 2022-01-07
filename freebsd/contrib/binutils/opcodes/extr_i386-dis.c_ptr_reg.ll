; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_ptr_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_ptr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@open_char = common dso_local global i32 0, align 4
@obufp = common dso_local global i64* null, align 8
@prefixes = common dso_local global i32 0, align 4
@PREFIX_ADDR = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@address_mode = common dso_local global i64 0, align 8
@mode_64bit = common dso_local global i64 0, align 8
@AFLAG = common dso_local global i32 0, align 4
@names32 = common dso_local global i8** null, align 8
@eAX_reg = common dso_local global i32 0, align 4
@names64 = common dso_local global i8** null, align 8
@names16 = common dso_local global i8** null, align 8
@close_char = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ptr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptr_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @open_char, align 4
  %7 = sext i32 %6 to i64
  %8 = load i64*, i64** @obufp, align 8
  %9 = getelementptr inbounds i64, i64* %8, i32 1
  store i64* %9, i64** @obufp, align 8
  store i64 %7, i64* %8, align 8
  %10 = load i32, i32* @prefixes, align 4
  %11 = load i32, i32* @PREFIX_ADDR, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @used_prefixes, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* @used_prefixes, align 4
  %15 = load i64, i64* @address_mode, align 8
  %16 = load i64, i64* @mode_64bit, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AFLAG, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load i8**, i8*** @names32, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @eAX_reg, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %24, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  br label %39

31:                                               ; preds = %18
  %32 = load i8**, i8*** @names64, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @eAX_reg, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %32, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %31, %23
  br label %62

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @AFLAG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i8**, i8*** @names32, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @eAX_reg, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %46, i64 %50
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %5, align 8
  br label %61

53:                                               ; preds = %40
  %54 = load i8**, i8*** @names16, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @eAX_reg, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %54, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %5, align 8
  br label %61

61:                                               ; preds = %53, %45
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @oappend(i8* %63)
  %65 = load i32, i32* @close_char, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** @obufp, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** @obufp, align 8
  store i64 %66, i64* %67, align 8
  %69 = load i64*, i64** @obufp, align 8
  store i64 0, i64* %69, align 8
  ret void
}

declare dso_local i32 @oappend(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
