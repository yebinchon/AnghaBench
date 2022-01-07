; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_common_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_common_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.hashtab = type { i32 }
%struct.common_datum = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PERM_SYMTAB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @common_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.hashtab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.common_datum*, align 8
  %9 = alloca [4 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.hashtab* %1, %struct.hashtab** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.common_datum* @kzalloc(i32 24, i32 %14)
  store %struct.common_datum* %15, %struct.common_datum** %8, align 8
  %16 = load %struct.common_datum*, %struct.common_datum** %8, align 8
  %17 = icmp ne %struct.common_datum* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  br label %106

21:                                               ; preds = %3
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @next_entry(i8* %22, i8* %23, i64 4)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %108

28:                                               ; preds = %21
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = call i8* @le32_to_cpu(i8 signext %30)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = call i8* @le32_to_cpu(i8 signext %34)
  %36 = load %struct.common_datum*, %struct.common_datum** %8, align 8
  %37 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.common_datum*, %struct.common_datum** %8, align 8
  %39 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %38, i32 0, i32 0
  %40 = load i32, i32* @PERM_SYMTAB_SIZE, align 4
  %41 = call i32 @symtab_init(%struct.TYPE_2__* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  br label %108

45:                                               ; preds = %28
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = call i8* @le32_to_cpu(i8 signext %47)
  %49 = load %struct.common_datum*, %struct.common_datum** %8, align 8
  %50 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = call i8* @le32_to_cpu(i8 signext %53)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kmalloc(i64 %57, i32 %58)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %45
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  br label %108

65:                                               ; preds = %45
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @next_entry(i8* %66, i8* %67, i64 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %108

73:                                               ; preds = %65
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %94, %73
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %11, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.policydb*, %struct.policydb** %4, align 8
  %84 = load %struct.common_datum*, %struct.common_datum** %8, align 8
  %85 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @perm_read(%struct.policydb* %83, i32 %87, i8* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %108

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %77

97:                                               ; preds = %77
  %98 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.common_datum*, %struct.common_datum** %8, align 8
  %101 = call i32 @hashtab_insert(%struct.hashtab* %98, i8* %99, %struct.common_datum* %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %108

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %108, %105, %18
  %107 = load i32, i32* %13, align 4
  ret i32 %107

108:                                              ; preds = %104, %92, %72, %62, %44, %27
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.common_datum*, %struct.common_datum** %8, align 8
  %111 = call i32 @common_destroy(i8* %109, %struct.common_datum* %110, i32* null)
  br label %106
}

declare dso_local %struct.common_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i8*, i8*, i64) #1

declare dso_local i8* @le32_to_cpu(i8 signext) #1

declare dso_local i32 @symtab_init(%struct.TYPE_2__*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @perm_read(%struct.policydb*, i32, i8*) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.common_datum*) #1

declare dso_local i32 @common_destroy(i8*, %struct.common_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
