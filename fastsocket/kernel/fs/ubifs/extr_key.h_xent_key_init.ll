; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_key.h_xent_key_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_key.h_xent_key_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 (i32, i32)* }
%union.ubifs_key = type { i32* }
%struct.qstr = type { i32, i32 }

@UBIFS_S_KEY_HASH_MASK = common dso_local global i32 0, align 4
@UBIFS_XENT_KEY = common dso_local global i32 0, align 4
@UBIFS_S_KEY_HASH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.qstr*)* @xent_key_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xent_key_init(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.qstr*, %struct.qstr** %8, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qstr*, %struct.qstr** %8, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 %12(i32 %15, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @UBIFS_S_KEY_HASH_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @ubifs_assert(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %30 = bitcast %union.ubifs_key* %29 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @UBIFS_XENT_KEY, align 4
  %35 = load i32, i32* @UBIFS_S_KEY_HASH_BITS, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %33, %36
  %38 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %39 = bitcast %union.ubifs_key* %38 to i32**
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
