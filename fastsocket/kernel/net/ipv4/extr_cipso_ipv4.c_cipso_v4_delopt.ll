; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_delopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_delopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_options = type { i64, i64, i64, i64, i64, i8*, i64 }
%struct.TYPE_2__ = type { i32 }

@IPOPT_NOP = common dso_local global i64 0, align 8
@opt_kfree_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipso_v4_delopt(%struct.ip_options** %0) #0 {
  %2 = alloca %struct.ip_options**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_options*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip_options** %0, %struct.ip_options*** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.ip_options**, %struct.ip_options*** %2, align 8
  %11 = load %struct.ip_options*, %struct.ip_options** %10, align 8
  store %struct.ip_options* %11, %struct.ip_options** %4, align 8
  %12 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %13 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %1
  %17 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %18 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %23 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %28 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %168

31:                                               ; preds = %26, %21, %16, %1
  %32 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %33 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %34, 4
  store i64 %35, i64* %6, align 8
  %36 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %37 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %36, i32 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  store i64 %44, i64* %5, align 8
  %45 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %46 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %49 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %31
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %55 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %52, %31
  %59 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %60 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %63 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ugt i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %69 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %66, %58
  %73 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %74 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %77 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ugt i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %83 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, %81
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %80, %72
  %87 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %88 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %91 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ugt i64 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %97 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %94, %86
  %101 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %102 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %108 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = sub i64 %109, %110
  %112 = load i64, i64* %5, align 8
  %113 = sub i64 %111, %112
  %114 = call i32 @memmove(i8* %103, i8* %106, i64 %113)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %149, %100
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %119 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ult i64 %117, %120
  br i1 %121, label %122, label %150

122:                                              ; preds = %115
  %123 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %124 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %123, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i64
  %131 = load i64, i64* @IPOPT_NOP, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %122
  %134 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %135 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %9, align 4
  br label %149

146:                                              ; preds = %122
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %146, %133
  br label %115

150:                                              ; preds = %115
  %151 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %152 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 3
  %157 = and i32 %156, -4
  %158 = sext i32 %157 to i64
  %159 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %160 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %159, i32 0, i32 6
  store i64 %158, i64* %160, align 8
  %161 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %162 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = sub i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %3, align 4
  br label %179

168:                                              ; preds = %26
  %169 = load %struct.ip_options**, %struct.ip_options*** %2, align 8
  store %struct.ip_options* null, %struct.ip_options** %169, align 8
  %170 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %171 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %3, align 4
  %174 = load %struct.ip_options*, %struct.ip_options** %4, align 8
  %175 = call %struct.TYPE_2__* @get_ip_options_rcu(%struct.ip_options* %174)
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* @opt_kfree_rcu, align 4
  %178 = call i32 @call_rcu(i32* %176, i32 %177)
  br label %179

179:                                              ; preds = %168, %150
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @get_ip_options_rcu(%struct.ip_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
