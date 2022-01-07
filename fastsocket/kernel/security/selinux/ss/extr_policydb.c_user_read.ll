; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_user_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_user_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i64 }
%struct.hashtab = type { i32 }
%struct.user_datum = type { i32, i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POLICYDB_VERSION_BOUNDARY = common dso_local global i64 0, align 8
@POLICYDB_VERSION_MLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @user_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca %struct.hashtab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.user_datum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store %struct.hashtab* %1, %struct.hashtab** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 2, i32* %10, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.user_datum* @kzalloc(i32 32, i32 %13)
  store %struct.user_datum* %14, %struct.user_datum** %8, align 8
  %15 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %16 = icmp ne %struct.user_datum* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %121

20:                                               ; preds = %3
  %21 = load %struct.policydb*, %struct.policydb** %4, align 8
  %22 = getelementptr inbounds %struct.policydb, %struct.policydb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 3, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 1, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @next_entry(i8* %28, i8* %29, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %123

38:                                               ; preds = %27
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = call i8* @le32_to_cpu(i8 signext %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = call i8* @le32_to_cpu(i8 signext %44)
  %46 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %47 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.policydb*, %struct.policydb** %4, align 8
  %49 = getelementptr inbounds %struct.policydb, %struct.policydb* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @POLICYDB_VERSION_BOUNDARY, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = call i8* @le32_to_cpu(i8 signext %55)
  %57 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %58 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %53, %38
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kmalloc(i32 %61, i32 %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %123

69:                                               ; preds = %59
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @next_entry(i8* %70, i8* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %123

77:                                               ; preds = %69
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %83 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %82, i32 0, i32 2
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @ebitmap_read(i32* %83, i8* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %123

89:                                               ; preds = %77
  %90 = load %struct.policydb*, %struct.policydb** %4, align 8
  %91 = getelementptr inbounds %struct.policydb, %struct.policydb* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @POLICYDB_VERSION_MLS, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %97 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %96, i32 0, i32 1
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @mls_read_range_helper(i32* %97, i8* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %123

103:                                              ; preds = %95
  %104 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %105 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %104, i32 0, i32 0
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @mls_read_level(i32* %105, i8* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %123

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %89
  %113 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %116 = call i32 @hashtab_insert(%struct.hashtab* %113, i8* %114, %struct.user_datum* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %123

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %123, %120, %17
  %122 = load i32, i32* %9, align 4
  ret i32 %122

123:                                              ; preds = %119, %110, %102, %88, %76, %66, %37
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.user_datum*, %struct.user_datum** %8, align 8
  %126 = call i32 @user_destroy(i8* %124, %struct.user_datum* %125, i32* null)
  br label %121
}

declare dso_local %struct.user_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i8*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i8 signext) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ebitmap_read(i32*, i8*) #1

declare dso_local i32 @mls_read_range_helper(i32*, i8*) #1

declare dso_local i32 @mls_read_level(i32*, i8*) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.user_datum*) #1

declare dso_local i32 @user_destroy(i8*, %struct.user_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
