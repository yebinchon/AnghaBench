; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_le_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_le_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_key = type { i32 }

@TYPE_DIRENTRY = common dso_local global i64 0, align 8
@off_buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%Lu(%Lu)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%Lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.reiserfs_key*)* @le_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @le_offset(%struct.reiserfs_key* %0) #0 {
  %2 = alloca %struct.reiserfs_key*, align 8
  %3 = alloca i32, align 4
  store %struct.reiserfs_key* %0, %struct.reiserfs_key** %2, align 8
  %4 = load %struct.reiserfs_key*, %struct.reiserfs_key** %2, align 8
  %5 = call i32 @le_key_version(%struct.reiserfs_key* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.reiserfs_key*, %struct.reiserfs_key** %2, align 8
  %8 = call i64 @le_key_k_type(i32 %6, %struct.reiserfs_key* %7)
  %9 = load i64, i64* @TYPE_DIRENTRY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i8*, i8** @off_buf, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.reiserfs_key*, %struct.reiserfs_key** %2, align 8
  %15 = call i64 @le_key_k_offset(i32 %13, %struct.reiserfs_key* %14)
  %16 = call i64 @GET_HASH_VALUE(i64 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.reiserfs_key*, %struct.reiserfs_key** %2, align 8
  %19 = call i64 @le_key_k_offset(i32 %17, %struct.reiserfs_key* %18)
  %20 = call i64 @GET_GENERATION_NUMBER(i64 %19)
  %21 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %20)
  br label %28

22:                                               ; preds = %1
  %23 = load i8*, i8** @off_buf, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.reiserfs_key*, %struct.reiserfs_key** %2, align 8
  %26 = call i64 @le_key_k_offset(i32 %24, %struct.reiserfs_key* %25)
  %27 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %22, %11
  %29 = load i8*, i8** @off_buf, align 8
  ret i8* %29
}

declare dso_local i32 @le_key_version(%struct.reiserfs_key*) #1

declare dso_local i64 @le_key_k_type(i32, %struct.reiserfs_key*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i64 @GET_HASH_VALUE(i64) #1

declare dso_local i64 @le_key_k_offset(i32, %struct.reiserfs_key*) #1

declare dso_local i64 @GET_GENERATION_NUMBER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
