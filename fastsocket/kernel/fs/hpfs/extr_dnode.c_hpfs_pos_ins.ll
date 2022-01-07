; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_pos_ins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_pos_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"HPFS: hpfs_pos_ins: %08x + %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @hpfs_pos_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfs_pos_ins(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, -64
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, -64
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 63
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 63
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 63
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 63
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 8
  %34 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  br label %42

35:                                               ; preds = %21
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -64
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %29
  br label %43

43:                                               ; preds = %42, %14, %3
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
