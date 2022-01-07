; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_skey_decoder.c_t0_parse7E_unsigned.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_skey_decoder.c_t0_parse7E_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @t0_parse7E_unsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t0_parse7E_unsigned(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i8**, i8*** %2, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %6, align 8
  %9 = load i8, i8* %7, align 1
  %10 = zext i8 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 7
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 127
  %15 = or i32 %12, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ult i32 %16, 128
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %3, align 4
  ret i32 %19

20:                                               ; preds = %5
  br label %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
