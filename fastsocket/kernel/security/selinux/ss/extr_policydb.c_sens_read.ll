; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_sens_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_sens_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.hashtab = type { i32 }
%struct.level_datum = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @sens_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sens_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.hashtab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.level_datum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i64, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.hashtab* %1, %struct.hashtab** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.level_datum* @kzalloc(i32 16, i32 %12)
  store %struct.level_datum* %13, %struct.level_datum** %8, align 8
  %14 = load %struct.level_datum*, %struct.level_datum** %8, align 8
  %15 = icmp ne %struct.level_datum* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  br label %88

19:                                               ; preds = %3
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @next_entry(i8* %20, i8* %21, i64 2)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %90

26:                                               ; preds = %19
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = call i8* @le32_to_cpu(i8 signext %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %11, align 8
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = call i8* @le32_to_cpu(i8 signext %32)
  %34 = load %struct.level_datum*, %struct.level_datum** %8, align 8
  %35 = getelementptr inbounds %struct.level_datum, %struct.level_datum* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i8* @kmalloc(i32 %38, i32 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %26
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %90

46:                                               ; preds = %26
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @next_entry(i8* %47, i8* %48, i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %90

54:                                               ; preds = %46
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call i8* @kmalloc(i32 4, i32 %58)
  %60 = load %struct.level_datum*, %struct.level_datum** %8, align 8
  %61 = getelementptr inbounds %struct.level_datum, %struct.level_datum* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.level_datum*, %struct.level_datum** %8, align 8
  %63 = getelementptr inbounds %struct.level_datum, %struct.level_datum* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %90

69:                                               ; preds = %54
  %70 = load %struct.level_datum*, %struct.level_datum** %8, align 8
  %71 = getelementptr inbounds %struct.level_datum, %struct.level_datum* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @mls_read_level(i8* %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %90

79:                                               ; preds = %69
  %80 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.level_datum*, %struct.level_datum** %8, align 8
  %83 = call i32 @hashtab_insert(%struct.hashtab* %80, i8* %81, %struct.level_datum* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %90

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %90, %87, %16
  %89 = load i32, i32* %9, align 4
  ret i32 %89

90:                                               ; preds = %86, %76, %66, %53, %43, %25
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.level_datum*, %struct.level_datum** %8, align 8
  %93 = call i32 @sens_destroy(i8* %91, %struct.level_datum* %92, i32* null)
  br label %88
}

declare dso_local %struct.level_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i8*, i8*, i64) #1

declare dso_local i8* @le32_to_cpu(i8 signext) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @mls_read_level(i8*, i8*) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.level_datum*) #1

declare dso_local i32 @sens_destroy(i8*, %struct.level_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
