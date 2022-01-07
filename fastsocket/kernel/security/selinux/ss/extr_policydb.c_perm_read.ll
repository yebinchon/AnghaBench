; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_perm_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_perm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.hashtab = type { i32 }
%struct.perm_datum = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @perm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perm_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.hashtab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perm_datum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i64, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.hashtab* %1, %struct.hashtab** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.perm_datum* @kzalloc(i32 8, i32 %12)
  store %struct.perm_datum* %13, %struct.perm_datum** %8, align 8
  %14 = load %struct.perm_datum*, %struct.perm_datum** %8, align 8
  %15 = icmp ne %struct.perm_datum* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  br label %65

19:                                               ; preds = %3
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @next_entry(i8* %20, i8* %21, i64 2)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %67

26:                                               ; preds = %19
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = call i8* @le32_to_cpu(i8 signext %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %11, align 8
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = call i8* @le32_to_cpu(i8 signext %32)
  %34 = load %struct.perm_datum*, %struct.perm_datum** %8, align 8
  %35 = getelementptr inbounds %struct.perm_datum, %struct.perm_datum* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kmalloc(i64 %37, i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %67

45:                                               ; preds = %26
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @next_entry(i8* %46, i8* %47, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %67

53:                                               ; preds = %45
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.perm_datum*, %struct.perm_datum** %8, align 8
  %60 = call i32 @hashtab_insert(%struct.hashtab* %57, i8* %58, %struct.perm_datum* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %67

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %67, %64, %16
  %66 = load i32, i32* %9, align 4
  ret i32 %66

67:                                               ; preds = %63, %52, %42, %25
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.perm_datum*, %struct.perm_datum** %8, align 8
  %70 = call i32 @perm_destroy(i8* %68, %struct.perm_datum* %69, i32* null)
  br label %65
}

declare dso_local %struct.perm_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i8*, i8*, i64) #1

declare dso_local i8* @le32_to_cpu(i8 signext) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.perm_datum*) #1

declare dso_local i32 @perm_destroy(i8*, %struct.perm_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
