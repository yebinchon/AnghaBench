; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb_utils.h_fb_memclear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb_utils.h_fb_memclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @fb_memclear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fb_memclear(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %11, 16
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call { i8*, i64 } asm sideeffect "\0A\09lsr.l\09#1,$1 ; jcc 1f ; clr.b ($0)+\0A1:\09lsr.l\09#1,$1 ; jcc 1f ; clr.w ($0)+\0A1:\09lsr.l\09#1,$1 ; jcc 1f ; clr.l ($0)+\0A1:\09lsr.l\09#1,$1 ; jcc 1f ; clr.l ($0)+ ; clr.l ($0)+\0A1:", "={ax},={dx},0,1,~{dirflag},~{fpsr},~{flags}"(i8* %14, i64 %15) #1, !srcloc !2
  %17 = extractvalue { i8*, i64 } %16, 0
  %18 = extractvalue { i8*, i64 } %16, 1
  store i8* %17, i8** %4, align 8
  store i64 %18, i64* %5, align 8
  br label %26

19:                                               ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call { i8*, i64, i64 } asm sideeffect "\0A\09move.l\09$1,$2\0A\09lsr.l\09#1,$2 ; jcc 1f ; clr.b ($0)+ ; subq.w #1,$1\0A\09lsr.l\09#1,$2 ; jcs 2f\0A\09clr.w\09($0)+  ; subq.w  #2,$1 ; jra 2f\0A1:\09lsr.l\09#1,$2 ; jcc 2f\0A\09clr.w\09($0)+  ; subq.w  #2,$1\0A2:\09move.w\09$1,$2; lsr.l #2,$1 ; jeq 6f\0A\09lsr.l\09#1,$1 ; jcc 3f ; clr.l ($0)+\0A3:\09lsr.l\09#1,$1 ; jcc 4f ; clr.l ($0)+ ; clr.l ($0)+\0A4:\09subq.l\09#1,$1 ; jcs 6f\0A5:\09clr.l\09($0)+; clr.l ($0)+ ; clr.l ($0)+ ; clr.l ($0)+\0A\09dbra\09$1,5b ; clr.w $1; subq.l #1,$1; jcc 5b\0A6:\09move.w\09$2,$1; btst #1,$1 ; jeq 7f ; clr.w ($0)+\0A7:\09btst\09#0,$1 ; jeq 8f ; clr.b ($0)+\0A8:", "={ax},={dx},={dx},0,1,~{dirflag},~{fpsr},~{flags}"(i8* %20, i64 %21) #1, !srcloc !3
  %23 = extractvalue { i8*, i64, i64 } %22, 0
  %24 = extractvalue { i8*, i64, i64 } %22, 1
  %25 = extractvalue { i8*, i64, i64 } %22, 2
  store i8* %23, i8** %4, align 8
  store i64 %24, i64* %5, align 8
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %19, %13
  store i8* null, i8** %3, align 8
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 273, i32 282, i32 325, i32 370, i32 415, i32 474}
!3 = !{i32 572, i32 581, i32 602, i32 660, i32 689, i32 735, i32 766, i32 803, i32 848, i32 891, i32 950, i32 982, i32 1045, i32 1097, i32 1155, i32 1199}
