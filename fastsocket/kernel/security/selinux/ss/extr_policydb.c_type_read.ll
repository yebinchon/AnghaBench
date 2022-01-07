; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_type_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_type_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64 }
%struct.hashtab = type { i32 }
%struct.type_datum = type { i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POLICYDB_VERSION_BOUNDARY = common dso_local global i64 0, align 8
@TYPEDATUM_PROPERTY_PRIMARY = common dso_local global i32 0, align 4
@TYPEDATUM_PROPERTY_ATTRIBUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @type_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.hashtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.type_datum*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.hashtab* %1, %struct.hashtab** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 3, i32* %11, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.type_datum* @kzalloc(i32 24, i32 %15)
  store %struct.type_datum* %16, %struct.type_datum** %9, align 8
  %17 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %18 = icmp ne %struct.type_datum* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %126

23:                                               ; preds = %3
  %24 = load %struct.policydb*, %struct.policydb** %5, align 8
  %25 = getelementptr inbounds %struct.policydb, %struct.policydb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 4, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 1, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @next_entry(i8* %31, i8* %32, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %122

41:                                               ; preds = %30
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = call i8* @le32_to_cpu(i8 signext %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = call i8* @le32_to_cpu(i8 signext %47)
  %49 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %50 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.policydb*, %struct.policydb** %5, align 8
  %52 = getelementptr inbounds %struct.policydb, %struct.policydb* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %41
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = call i8* @le32_to_cpu(i8 signext %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @TYPEDATUM_PROPERTY_PRIMARY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %67 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @TYPEDATUM_PROPERTY_ATTRIBUTE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %75 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 3
  %78 = load i8, i8* %77, align 1
  %79 = call i8* @le32_to_cpu(i8 signext %78)
  %80 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %81 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %89

82:                                               ; preds = %41
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = call i8* @le32_to_cpu(i8 signext %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %88 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %82, %76
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kmalloc(i32 %91, i32 %92)
  store i8* %93, i8** %8, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %122

99:                                               ; preds = %89
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @next_entry(i8* %100, i8* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %122

107:                                              ; preds = %99
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 0, i8* %111, align 1
  %112 = load %struct.hashtab*, %struct.hashtab** %6, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %115 = call i32 @hashtab_insert(%struct.hashtab* %112, i8* %113, %struct.type_datum* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %122

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %122, %119
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %4, align 4
  br label %126

122:                                              ; preds = %118, %106, %96, %40
  %123 = load i8*, i8** %8, align 8
  %124 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %125 = call i32 @type_destroy(i8* %123, %struct.type_datum* %124, i32* null)
  br label %120

126:                                              ; preds = %120, %19
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.type_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i8*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i8 signext) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.type_datum*) #1

declare dso_local i32 @type_destroy(i8*, %struct.type_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
