; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_code_for_cipher_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_code_for_cipher_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_cipher_code_str_map_elem = type { i8*, i32 }

@ecryptfs_cipher_code_str_map = common dso_local global %struct.ecryptfs_cipher_code_str_map_elem* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@RFC2440_CIPHER_AES_128 = common dso_local global i32 0, align 4
@RFC2440_CIPHER_AES_192 = common dso_local global i32 0, align 4
@RFC2440_CIPHER_AES_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_code_for_cipher_string(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecryptfs_cipher_code_str_map_elem*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ecryptfs_cipher_code_str_map_elem*, %struct.ecryptfs_cipher_code_str_map_elem** @ecryptfs_cipher_code_str_map, align 8
  store %struct.ecryptfs_cipher_code_str_map_elem* %8, %struct.ecryptfs_cipher_code_str_map_elem** %7, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  switch i64 %13, label %20 [
    i64 16, label %14
    i64 24, label %16
    i64 32, label %18
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @RFC2440_CIPHER_AES_128, align 4
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @RFC2440_CIPHER_AES_192, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @RFC2440_CIPHER_AES_256, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %12, %16, %14
  br label %49

21:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ecryptfs_cipher_code_str_map_elem*, %struct.ecryptfs_cipher_code_str_map_elem** @ecryptfs_cipher_code_str_map, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.ecryptfs_cipher_code_str_map_elem* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.ecryptfs_cipher_code_str_map_elem*, %struct.ecryptfs_cipher_code_str_map_elem** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ecryptfs_cipher_code_str_map_elem, %struct.ecryptfs_cipher_code_str_map_elem* %29, i64 %31
  %33 = getelementptr inbounds %struct.ecryptfs_cipher_code_str_map_elem, %struct.ecryptfs_cipher_code_str_map_elem* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %28, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.ecryptfs_cipher_code_str_map_elem*, %struct.ecryptfs_cipher_code_str_map_elem** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ecryptfs_cipher_code_str_map_elem, %struct.ecryptfs_cipher_code_str_map_elem* %38, i64 %40
  %42 = getelementptr inbounds %struct.ecryptfs_cipher_code_str_map_elem, %struct.ecryptfs_cipher_code_str_map_elem* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  br label %48

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %22

48:                                               ; preds = %37, %22
  br label %49

49:                                               ; preds = %48, %20
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ecryptfs_cipher_code_str_map_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
