; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_mcast_get_mac_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_mcast_get_mac_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slic_crc_init = common dso_local global i32 0, align 4
@slic_crc_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*)* @slic_mcast_get_mac_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @slic_mcast_get_mac_hash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %6, align 1
  %7 = load i32, i32* @slic_crc_init, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @slic_mcast_init_crc32()
  store i32 1, i32* @slic_crc_init, align 4
  br label %11

11:                                               ; preds = %9, %1
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %12 = load i8*, i8** %2, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %30, %11
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 8
  %19 = load i32*, i32** @slic_crc_table, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = xor i32 %20, %23
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %19, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %18, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %16
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %13

35:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 9
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %40, %41
  %43 = and i32 %42, 1
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 8, %44
  %46 = shl i32 %43, %45
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = or i32 %48, %46
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %6, align 1
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load i8, i8* %6, align 1
  ret i8 %55
}

declare dso_local i32 @slic_mcast_init_crc32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
