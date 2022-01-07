; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_type_attribute_bounds_av.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_type_attribute_bounds_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.type_datum** }
%struct.type_datum = type { i32 }
%struct.context = type { i32 }
%struct.av_decision = type { i32 }

@policydb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.context*, i32, %struct.av_decision*)* @type_attribute_bounds_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @type_attribute_bounds_av(%struct.context* %0, %struct.context* %1, i32 %2, %struct.av_decision* %3) #0 {
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.av_decision*, align 8
  %9 = alloca %struct.context, align 4
  %10 = alloca %struct.context, align 4
  %11 = alloca %struct.av_decision, align 4
  %12 = alloca %struct.type_datum*, align 8
  %13 = alloca %struct.type_datum*, align 8
  %14 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.context* %1, %struct.context** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.av_decision* %3, %struct.av_decision** %8, align 8
  %15 = load %struct.type_datum**, %struct.type_datum*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 0), align 8
  %16 = load %struct.context*, %struct.context** %5, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.type_datum*, %struct.type_datum** %15, i64 %20
  %22 = load %struct.type_datum*, %struct.type_datum** %21, align 8
  store %struct.type_datum* %22, %struct.type_datum** %12, align 8
  %23 = load %struct.type_datum**, %struct.type_datum*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policydb, i32 0, i32 0), align 8
  %24 = load %struct.context*, %struct.context** %6, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.type_datum*, %struct.type_datum** %23, i64 %28
  %30 = load %struct.type_datum*, %struct.type_datum** %29, align 8
  store %struct.type_datum* %30, %struct.type_datum** %13, align 8
  store i32 0, i32* %14, align 4
  %31 = load %struct.type_datum*, %struct.type_datum** %12, align 8
  %32 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %4
  %36 = call i32 @memset(%struct.av_decision* %11, i32 0, i32 4)
  %37 = load %struct.context*, %struct.context** %5, align 8
  %38 = call i32 @memcpy(%struct.context* %9, %struct.context* %37, i32 4)
  %39 = load %struct.type_datum*, %struct.type_datum** %12, align 8
  %40 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.context*, %struct.context** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @context_struct_compute_av(%struct.context* %9, %struct.context* %43, i32 %44, %struct.av_decision* %11)
  %46 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %49 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %47, %50
  %52 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %53 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %148

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %11, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %62 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %60, %63
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %57, %4
  %66 = load %struct.type_datum*, %struct.type_datum** %13, align 8
  %67 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %65
  %71 = call i32 @memset(%struct.av_decision* %11, i32 0, i32 4)
  %72 = load %struct.context*, %struct.context** %6, align 8
  %73 = call i32 @memcpy(%struct.context* %10, %struct.context* %72, i32 4)
  %74 = load %struct.type_datum*, %struct.type_datum** %13, align 8
  %75 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load %struct.context*, %struct.context** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @context_struct_compute_av(%struct.context* %78, %struct.context* %10, i32 %79, %struct.av_decision* %11)
  %81 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %11, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %84 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %82, %85
  %87 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %88 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %70
  br label %148

92:                                               ; preds = %70
  %93 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %11, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %97 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %95, %98
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %92, %65
  %101 = load %struct.type_datum*, %struct.type_datum** %12, align 8
  %102 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %133

105:                                              ; preds = %100
  %106 = load %struct.type_datum*, %struct.type_datum** %13, align 8
  %107 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %105
  %111 = call i32 @memset(%struct.av_decision* %11, i32 0, i32 4)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @context_struct_compute_av(%struct.context* %9, %struct.context* %10, i32 %112, %struct.av_decision* %11)
  %114 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %11, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %117 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %115, %118
  %120 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %121 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %148

125:                                              ; preds = %110
  %126 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %11, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %130 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %128, %131
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %125, %105, %100
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load i32, i32* %14, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.av_decision*, %struct.av_decision** %8, align 8
  %140 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.context*, %struct.context** %5, align 8
  %144 = load %struct.context*, %struct.context** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @security_dump_masked_av(%struct.context* %143, %struct.context* %144, i32 %145, i32 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %56, %91, %124, %136, %133
  ret void
}

declare dso_local i32 @memset(%struct.av_decision*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.context*, %struct.context*, i32) #1

declare dso_local i32 @context_struct_compute_av(%struct.context*, %struct.context*, i32, %struct.av_decision*) #1

declare dso_local i32 @security_dump_masked_av(%struct.context*, %struct.context*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
