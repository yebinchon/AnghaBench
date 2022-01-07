; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_rsi_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_rsi_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.rsi = type { %struct.TYPE_2__, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rsi_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @rsi_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsi, align 8
  %11 = alloca %struct.rsi*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %7, align 8
  store %struct.rsi* null, %struct.rsi** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = call i32 @memset(%struct.rsi* %10, i32 0, i32 48)
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @qword_get(i8** %5, i8* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %135

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  %27 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 6
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @dup_to_netobj(i32* %27, i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %135

33:                                               ; preds = %24
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @qword_get(i8** %5, i8* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %135

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  %45 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 5
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @dup_to_netobj(i32* %45, i8* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %135

51:                                               ; preds = %42
  %52 = call %struct.rsi* @rsi_lookup(%struct.rsi* %10)
  store %struct.rsi* %52, %struct.rsi** %11, align 8
  %53 = load %struct.rsi*, %struct.rsi** %11, align 8
  %54 = icmp ne %struct.rsi* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %135

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = call i64 @get_expiry(i8** %5)
  store i64 %59, i64* %12, align 8
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  %62 = load i64, i64* %12, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %135

65:                                               ; preds = %56
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @qword_get(i8** %5, i8* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %135

72:                                               ; preds = %65
  %73 = load i8*, i8** %7, align 8
  %74 = call i8* @simple_strtoul(i8* %73, i8** %8, i32 10)
  %75 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 4
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %135

80:                                               ; preds = %72
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @qword_get(i8** %5, i8* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %135

87:                                               ; preds = %80
  %88 = load i8*, i8** %7, align 8
  %89 = call i8* @simple_strtoul(i8* %88, i8** %8, i32 10)
  %90 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 3
  store i8* %89, i8** %90, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %135

95:                                               ; preds = %87
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @qword_get(i8** %5, i8* %96, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %135

102:                                              ; preds = %95
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %13, align 4
  %105 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 2
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @dup_to_netobj(i32* %105, i8* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %135

111:                                              ; preds = %102
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @qword_get(i8** %5, i8* %112, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %135

120:                                              ; preds = %111
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %13, align 4
  %123 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 1
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i64 @dup_to_netobj(i32* %123, i8* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %135

129:                                              ; preds = %120
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.rsi*, %struct.rsi** %11, align 8
  %134 = call %struct.rsi* @rsi_update(%struct.rsi* %10, %struct.rsi* %133)
  store %struct.rsi* %134, %struct.rsi** %11, align 8
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %129, %128, %119, %110, %101, %94, %86, %79, %71, %64, %55, %50, %41, %32, %23
  %136 = call i32 @rsi_free(%struct.rsi* %10)
  %137 = load %struct.rsi*, %struct.rsi** %11, align 8
  %138 = icmp ne %struct.rsi* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load %struct.rsi*, %struct.rsi** %11, align 8
  %141 = getelementptr inbounds %struct.rsi, %struct.rsi* %140, i32 0, i32 0
  %142 = call i32 @cache_put(%struct.TYPE_2__* %141, i32* @rsi_cache)
  br label %146

143:                                              ; preds = %135
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i32, i32* %13, align 4
  ret i32 %147
}

declare dso_local i32 @memset(%struct.rsi*, i32, i32) #1

declare dso_local i32 @qword_get(i8**, i8*, i32) #1

declare dso_local i64 @dup_to_netobj(i32*, i8*, i32) #1

declare dso_local %struct.rsi* @rsi_lookup(%struct.rsi*) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local i8* @simple_strtoul(i8*, i8**, i32) #1

declare dso_local %struct.rsi* @rsi_update(%struct.rsi*, %struct.rsi*) #1

declare dso_local i32 @rsi_free(%struct.rsi*) #1

declare dso_local i32 @cache_put(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
