; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_pseudoflavour_to_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_pseudoflavour_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i8* }

@nfs_pseudoflavour_to_name.sec_flavours = internal constant [12 x %struct.anon] [%struct.anon { i64 130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i64 129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i64 139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i64 138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i64 137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i64 136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i64 135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon { i64 134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i64 133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon { i64 132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i64 131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon { i64 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"krb5\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"krb5i\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"krb5p\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"lkey\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lkeyi\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"lkeyp\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"spkm\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"spkmi\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"spkmp\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @nfs_pseudoflavour_to_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nfs_pseudoflavour_to_name(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @nfs_pseudoflavour_to_name.sec_flavours, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 16
  %10 = icmp ne i64 %9, 128
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @nfs_pseudoflavour_to_name.sec_flavours, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 16
  %17 = load i64, i64* %2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %24

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %19, %4
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @nfs_pseudoflavour_to_name.sec_flavours, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
