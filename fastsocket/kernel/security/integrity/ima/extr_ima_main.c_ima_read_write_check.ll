; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_main.c_ima_read_write_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_main.c_ima_read_write_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_iint_cache = type { i32, i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"invalid_pcr\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ToMToU\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"open_writers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ima_iint_cache*, %struct.inode*, i8*)* @ima_read_write_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ima_read_write_check(i32 %0, %struct.ima_iint_cache* %1, %struct.inode* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ima_iint_cache*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ima_iint_cache* %1, %struct.ima_iint_cache** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %30 [
    i32 128, label %10
    i32 129, label %20
  ]

10:                                               ; preds = %4
  %11 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %12 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @ima_add_violation(%struct.inode* %16, i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %10
  br label %30

20:                                               ; preds = %4
  %21 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %6, align 8
  %22 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @ima_add_violation(%struct.inode* %26, i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %4, %29, %19
  ret void
}

declare dso_local i32 @ima_add_violation(%struct.inode*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
