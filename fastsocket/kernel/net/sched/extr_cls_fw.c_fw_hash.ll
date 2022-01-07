; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fw_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_hash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @HTSIZE, align 4
  %6 = icmp eq i32 %5, 4096
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 24
  %10 = and i32 %9, 4095
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 12
  %13 = and i32 %12, 4095
  %14 = xor i32 %10, %13
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 4095
  %17 = xor i32 %14, %16
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load i32, i32* @HTSIZE, align 4
  %20 = icmp eq i32 %19, 2048
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 22
  %24 = and i32 %23, 2047
  %25 = load i32, i32* %3, align 4
  %26 = ashr i32 %25, 11
  %27 = and i32 %26, 2047
  %28 = xor i32 %24, %27
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 2047
  %31 = xor i32 %28, %30
  store i32 %31, i32* %2, align 4
  br label %87

32:                                               ; preds = %18
  %33 = load i32, i32* @HTSIZE, align 4
  %34 = icmp eq i32 %33, 1024
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 20
  %38 = and i32 %37, 1023
  %39 = load i32, i32* %3, align 4
  %40 = ashr i32 %39, 10
  %41 = and i32 %40, 1023
  %42 = xor i32 %38, %41
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 1023
  %45 = xor i32 %42, %44
  store i32 %45, i32* %2, align 4
  br label %87

46:                                               ; preds = %32
  %47 = load i32, i32* @HTSIZE, align 4
  %48 = icmp eq i32 %47, 512
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = ashr i32 %50, 27
  %52 = load i32, i32* %3, align 4
  %53 = ashr i32 %52, 18
  %54 = and i32 %53, 511
  %55 = xor i32 %51, %54
  %56 = load i32, i32* %3, align 4
  %57 = ashr i32 %56, 9
  %58 = and i32 %57, 511
  %59 = xor i32 %55, %58
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 511
  %62 = xor i32 %59, %61
  store i32 %62, i32* %2, align 4
  br label %87

63:                                               ; preds = %46
  %64 = load i32, i32* @HTSIZE, align 4
  %65 = icmp eq i32 %64, 256
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  store i32* %3, i32** %4, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %69, %72
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %73, %76
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %77, %80
  store i32 %81, i32* %2, align 4
  br label %87

82:                                               ; preds = %63
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @HTSIZE, align 4
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %83, %85
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %66, %49, %35, %21, %7
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
