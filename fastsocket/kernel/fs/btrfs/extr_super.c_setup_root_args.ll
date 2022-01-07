; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_setup_root_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_setup_root_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"subvol=\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"subvolid=0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @setup_root_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setup_root_args(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = add nsw i32 %9, 2
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %56

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call i8* @kmalloc(i32 %18, i32 %19)
  store i8* %20, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %56

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  store i8 0, i8* %29, align 1
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %28, %24
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strcpy(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** %6, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 44)
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strcpy(i8* %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** %2, align 8
  br label %56

56:                                               ; preds = %54, %23, %16
  %57 = load i8*, i8** %2, align 8
  ret i8* %57
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
