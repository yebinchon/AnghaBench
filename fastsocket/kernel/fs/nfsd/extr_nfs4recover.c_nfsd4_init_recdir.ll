; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfsd4_init_recdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfsd4_init_recdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"NFSD: Using %s as the NFSv4 state recovery directory\0A\00", align 1
@rec_file = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"NFSD: Unable to change credentials to find recovery directory: error %d\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"NFSD: unable to find recovery directory %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_init_recdir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i32*, i32** @rec_file, align 8
  %8 = call i32 @BUG_ON(i32* %7)
  %9 = call i32 @nfs4_save_creds(%struct.cred** %3)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %30

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = load i32, i32* @O_DIRECTORY, align 4
  %19 = or i32 %17, %18
  %20 = call i32* @filp_open(i8* %16, i32 %19, i32 0)
  store i32* %20, i32** @rec_file, align 8
  %21 = load i32*, i32** @rec_file, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i32* null, i32** @rec_file, align 8
  br label %27

27:                                               ; preds = %24, %15
  %28 = load %struct.cred*, %struct.cred** %3, align 8
  %29 = call i32 @nfs4_reset_creds(%struct.cred* %28)
  br label %30

30:                                               ; preds = %27, %12
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32*) #1

declare dso_local i32 @nfs4_save_creds(%struct.cred**) #1

declare dso_local i32* @filp_open(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @nfs4_reset_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
