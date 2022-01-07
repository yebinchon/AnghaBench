; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regdom_intersect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regdom_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32, i8*, %struct.ieee80211_reg_rule* }
%struct.ieee80211_reg_rule = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_regdomain* (%struct.ieee80211_regdomain*, %struct.ieee80211_regdomain*)* @regdom_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_regdomain* @regdom_intersect(%struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain* %1) #0 {
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.ieee80211_regdomain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_reg_rule*, align 8
  %13 = alloca %struct.ieee80211_reg_rule*, align 8
  %14 = alloca %struct.ieee80211_reg_rule*, align 8
  %15 = alloca %struct.ieee80211_regdomain*, align 8
  %16 = alloca %struct.ieee80211_reg_rule, align 4
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %4, align 8
  store %struct.ieee80211_regdomain* %1, %struct.ieee80211_regdomain** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %18 = icmp ne %struct.ieee80211_regdomain* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %21 = icmp ne %struct.ieee80211_regdomain* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %3, align 8
  br label %163

23:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %62, %23
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %31, i32 0, i32 2
  %33 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %33, i64 %35
  store %struct.ieee80211_reg_rule* %36, %struct.ieee80211_reg_rule** %12, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %58, %30
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %44, i32 0, i32 2
  %46 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %46, i64 %48
  store %struct.ieee80211_reg_rule* %49, %struct.ieee80211_reg_rule** %13, align 8
  %50 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %12, align 8
  %51 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %13, align 8
  %52 = call i32 @reg_rules_intersect(%struct.ieee80211_reg_rule* %50, %struct.ieee80211_reg_rule* %51, %struct.ieee80211_reg_rule* %16)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %43
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %37

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %24

65:                                               ; preds = %24
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %3, align 8
  br label %163

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = add i64 24, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.ieee80211_regdomain* @kzalloc(i32 %75, i32 %76)
  store %struct.ieee80211_regdomain* %77, %struct.ieee80211_regdomain** %15, align 8
  %78 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %15, align 8
  %79 = icmp ne %struct.ieee80211_regdomain* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %3, align 8
  br label %163

81:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %140, %81
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ult i32 %89, %90
  br label %92

92:                                               ; preds = %88, %82
  %93 = phi i1 [ false, %82 ], [ %91, %88 ]
  br i1 %93, label %94, label %143

94:                                               ; preds = %92
  %95 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %95, i32 0, i32 2
  %97 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %97, i64 %99
  store %struct.ieee80211_reg_rule* %100, %struct.ieee80211_reg_rule** %12, align 8
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %136, %94
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ult i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ult i32 %108, %109
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi i1 [ false, %101 ], [ %110, %107 ]
  br i1 %112, label %113, label %139

113:                                              ; preds = %111
  %114 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %5, align 8
  %115 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %114, i32 0, i32 2
  %116 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %116, i64 %118
  store %struct.ieee80211_reg_rule* %119, %struct.ieee80211_reg_rule** %13, align 8
  %120 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %15, align 8
  %121 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %120, i32 0, i32 2
  %122 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %122, i64 %124
  store %struct.ieee80211_reg_rule* %125, %struct.ieee80211_reg_rule** %14, align 8
  %126 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %12, align 8
  %127 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %13, align 8
  %128 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %14, align 8
  %129 = call i32 @reg_rules_intersect(%struct.ieee80211_reg_rule* %126, %struct.ieee80211_reg_rule* %127, %struct.ieee80211_reg_rule* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %113
  br label %136

133:                                              ; preds = %113
  %134 = load i32, i32* %11, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %133, %132
  %137 = load i32, i32* %9, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %101

139:                                              ; preds = %111
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %82

143:                                              ; preds = %92
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %15, align 8
  %149 = call i32 @kfree(%struct.ieee80211_regdomain* %148)
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %3, align 8
  br label %163

150:                                              ; preds = %143
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %15, align 8
  %153 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %15, align 8
  %155 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  store i8 57, i8* %157, align 1
  %158 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %15, align 8
  %159 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  store i8 56, i8* %161, align 1
  %162 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %15, align 8
  store %struct.ieee80211_regdomain* %162, %struct.ieee80211_regdomain** %3, align 8
  br label %163

163:                                              ; preds = %150, %147, %80, %68, %22
  %164 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  ret %struct.ieee80211_regdomain* %164
}

declare dso_local i32 @reg_rules_intersect(%struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*) #1

declare dso_local %struct.ieee80211_regdomain* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
