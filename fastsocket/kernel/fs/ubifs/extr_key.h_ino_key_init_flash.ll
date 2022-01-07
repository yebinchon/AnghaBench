; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_key.h_ino_key_init_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_key.h_ino_key_init_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i8** }

@UBIFS_INO_KEY = common dso_local global i32 0, align 4
@UBIFS_S_KEY_BLOCK_BITS = common dso_local global i32 0, align 4
@UBIFS_MAX_KEY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, i8*, i32)* @ino_key_init_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_key_init_flash(%struct.ubifs_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %union.ubifs_key*
  store %union.ubifs_key* %9, %union.ubifs_key** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @cpu_to_le32(i32 %10)
  %12 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %13 = bitcast %union.ubifs_key* %12 to i8***
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = load i32, i32* @UBIFS_INO_KEY, align 4
  %17 = load i32, i32* @UBIFS_S_KEY_BLOCK_BITS, align 4
  %18 = shl i32 %16, %17
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %21 = bitcast %union.ubifs_key* %20 to i8***
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* %19, i8** %23, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr i8, i8* %24, i64 8
  %26 = load i64, i64* @UBIFS_MAX_KEY_LEN, align 8
  %27 = sub nsw i64 %26, 8
  %28 = call i32 @memset(i8* %25, i32 0, i64 %27)
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
