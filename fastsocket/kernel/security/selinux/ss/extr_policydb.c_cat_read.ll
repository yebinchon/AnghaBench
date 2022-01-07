; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_cat_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_cat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.hashtab = type { i32 }
%struct.cat_datum = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @cat_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cat_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.hashtab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cat_datum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca i64, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.hashtab* %1, %struct.hashtab** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.cat_datum* @kzalloc(i32 16, i32 %12)
  store %struct.cat_datum* %13, %struct.cat_datum** %8, align 8
  %14 = load %struct.cat_datum*, %struct.cat_datum** %8, align 8
  %15 = icmp ne %struct.cat_datum* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  br label %70

19:                                               ; preds = %3
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @next_entry(i8* %20, i8* %21, i64 3)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %72

26:                                               ; preds = %19
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = call i8* @le32_to_cpu(i8 signext %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %11, align 8
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = call i8* @le32_to_cpu(i8 signext %32)
  %34 = load %struct.cat_datum*, %struct.cat_datum** %8, align 8
  %35 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = call i8* @le32_to_cpu(i8 signext %37)
  %39 = load %struct.cat_datum*, %struct.cat_datum** %8, align 8
  %40 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 1
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i8* @kmalloc(i64 %42, i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %26
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %72

50:                                               ; preds = %26
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @next_entry(i8* %51, i8* %52, i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %72

58:                                               ; preds = %50
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.cat_datum*, %struct.cat_datum** %8, align 8
  %65 = call i32 @hashtab_insert(%struct.hashtab* %62, i8* %63, %struct.cat_datum* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %72

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %72, %69, %16
  %71 = load i32, i32* %9, align 4
  ret i32 %71

72:                                               ; preds = %68, %57, %47, %25
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.cat_datum*, %struct.cat_datum** %8, align 8
  %75 = call i32 @cat_destroy(i8* %73, %struct.cat_datum* %74, i32* null)
  br label %70
}

declare dso_local %struct.cat_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i8*, i8*, i64) #1

declare dso_local i8* @le32_to_cpu(i8 signext) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.cat_datum*) #1

declare dso_local i32 @cat_destroy(i8*, %struct.cat_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
