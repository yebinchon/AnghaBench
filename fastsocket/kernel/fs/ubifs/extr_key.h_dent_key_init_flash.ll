; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_key.h_dent_key_init_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_key.h_dent_key_init_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 (i32, i32)* }
%struct.qstr = type { i32, i32 }
%union.ubifs_key = type { i8** }

@UBIFS_S_KEY_HASH_MASK = common dso_local global i32 0, align 4
@UBIFS_DENT_KEY = common dso_local global i32 0, align 4
@UBIFS_S_KEY_HASH_BITS = common dso_local global i32 0, align 4
@UBIFS_MAX_KEY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, i8*, i32, %struct.qstr*)* @dent_key_init_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dent_key_init_flash(%struct.ubifs_info* %0, i8* %1, i32 %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %union.ubifs_key*, align 8
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %union.ubifs_key*
  store %union.ubifs_key* %12, %union.ubifs_key** %9, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = load %struct.qstr*, %struct.qstr** %8, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qstr*, %struct.qstr** %8, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %15(i32 %18, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @UBIFS_S_KEY_HASH_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubifs_assert(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %34 = bitcast %union.ubifs_key* %33 to i8***
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %32, i8** %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @UBIFS_DENT_KEY, align 4
  %39 = load i32, i32* @UBIFS_S_KEY_HASH_BITS, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %44 = bitcast %union.ubifs_key* %43 to i8***
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* %42, i8** %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr i8, i8* %47, i64 8
  %49 = load i64, i64* @UBIFS_MAX_KEY_LEN, align 8
  %50 = sub nsw i64 %49, 8
  %51 = call i32 @memset(i8* %48, i32 0, i64 %50)
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
