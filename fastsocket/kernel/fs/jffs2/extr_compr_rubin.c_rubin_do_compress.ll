; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rubin.c_rubin_do_compress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rubin.c_rubin_do_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rubin_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i8*, i32*, i32*)* @rubin_do_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rubin_do_compress(i32 %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rubin_state, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %16, i32 0, i32 0
  %18 = load i8*, i8** %11, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 8
  %22 = call i32 @init_pushpull(i32* %17, i8* %18, i32 %21, i32 0, i32 32)
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @init_rubin(%struct.rubin_state* %16, i32 %23, i32* %24)
  br label %26

26:                                               ; preds = %42, %6
  %27 = load i32, i32* %15, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @out_byte(%struct.rubin_state* %16, i8 zeroext %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %31, %26
  %41 = phi i1 [ false, %26 ], [ %39, %31 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %26

45:                                               ; preds = %40
  %46 = call i32 @end_rubin(%struct.rubin_state* %16)
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 -1, i32* %7, align 4
  br label %65

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %16, i32 0, i32 0
  %53 = call i32 @pushedbits(i32* %52)
  %54 = add nsw i32 %53, 7
  %55 = sdiv i32 %54, 8
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 -1, i32* %7, align 4
  br label %65

60:                                               ; preds = %51
  %61 = load i32, i32* %15, align 4
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %59, %50
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @init_pushpull(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @init_rubin(%struct.rubin_state*, i32, i32*) #1

declare dso_local i32 @out_byte(%struct.rubin_state*, i8 zeroext) #1

declare dso_local i32 @end_rubin(%struct.rubin_state*) #1

declare dso_local i32 @pushedbits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
