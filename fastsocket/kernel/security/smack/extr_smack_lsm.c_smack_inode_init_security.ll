; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_inode_init_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_inode_init_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@XATTR_SMACK_SUFFIX = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, i8**, i8**, i64*)* @smack_inode_init_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_inode_init_security(%struct.inode* %0, %struct.inode* %1, i8** %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = call i8* @smk_of_inode(%struct.inode* %13)
  store i8* %14, i8** %12, align 8
  %15 = load i8**, i8*** %9, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load i8*, i8** @XATTR_SMACK_SUFFIX, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kstrdup(i8* %18, i32 %19)
  %21 = load i8**, i8*** %9, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i8**, i8*** %9, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %54

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %5
  %30 = load i8**, i8*** %10, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kstrdup(i8* %33, i32 %34)
  %36 = load i8**, i8*** %10, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %10, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %54

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i64*, i64** %11, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %11, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %44
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %40, %25
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i8* @smk_of_inode(%struct.inode*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
