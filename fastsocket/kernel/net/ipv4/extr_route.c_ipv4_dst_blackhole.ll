; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ipv4_dst_blackhole.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ipv4_dst_blackhole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rtable = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.dst_entry }
%struct.dst_entry = type { i32, i64, i32, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.flowi = type { i32 }

@ipv4_dst_blackhole_ops = common dso_local global i32 0, align 4
@dst_discard = common dso_local global i8* null, align 8
@RTAX_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.rtable**, %struct.flowi*)* @ipv4_dst_blackhole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_dst_blackhole(%struct.net* %0, %struct.rtable** %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.rtable**, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.rtable*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.rtable** %1, %struct.rtable*** %5, align 8
  store %struct.flowi* %2, %struct.flowi** %6, align 8
  %10 = load %struct.rtable**, %struct.rtable*** %5, align 8
  %11 = load %struct.rtable*, %struct.rtable** %10, align 8
  store %struct.rtable* %11, %struct.rtable** %7, align 8
  %12 = call i64 @dst_alloc(i32* @ipv4_dst_blackhole_ops)
  %13 = inttoptr i64 %12 to %struct.rtable*
  store %struct.rtable* %13, %struct.rtable** %8, align 8
  %14 = load %struct.rtable*, %struct.rtable** %8, align 8
  %15 = icmp ne %struct.rtable* %14, null
  br i1 %15, label %16, label %138

16:                                               ; preds = %3
  %17 = load %struct.rtable*, %struct.rtable** %8, align 8
  %18 = getelementptr inbounds %struct.rtable, %struct.rtable* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.dst_entry* %19, %struct.dst_entry** %9, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 5
  %22 = call i32 @atomic_set(i32* %21, i32 1)
  %23 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i8*, i8** @dst_discard, align 8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %27 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @dst_discard, align 8
  %29 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %30 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %32 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rtable*, %struct.rtable** %7, align 8
  %35 = getelementptr inbounds %struct.rtable, %struct.rtable* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RTAX_MAX, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i32 %33, i32 %38, i32 %42)
  %44 = load %struct.rtable*, %struct.rtable** %7, align 8
  %45 = getelementptr inbounds %struct.rtable, %struct.rtable* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %50 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %52 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %16
  %56 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %57 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dev_hold(i64 %58)
  br label %60

60:                                               ; preds = %55, %16
  %61 = load %struct.rtable*, %struct.rtable** %7, align 8
  %62 = getelementptr inbounds %struct.rtable, %struct.rtable* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rtable*, %struct.rtable** %8, align 8
  %65 = getelementptr inbounds %struct.rtable, %struct.rtable* %64, i32 0, i32 11
  store i32 %63, i32* %65, align 8
  %66 = load %struct.rtable*, %struct.rtable** %7, align 8
  %67 = getelementptr inbounds %struct.rtable, %struct.rtable* %66, i32 0, i32 10
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rtable*, %struct.rtable** %8, align 8
  %70 = getelementptr inbounds %struct.rtable, %struct.rtable* %69, i32 0, i32 10
  store i64 %68, i64* %70, align 8
  %71 = load %struct.rtable*, %struct.rtable** %8, align 8
  %72 = getelementptr inbounds %struct.rtable, %struct.rtable* %71, i32 0, i32 10
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %60
  %76 = load %struct.rtable*, %struct.rtable** %8, align 8
  %77 = getelementptr inbounds %struct.rtable, %struct.rtable* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @in_dev_hold(i64 %78)
  br label %80

80:                                               ; preds = %75, %60
  %81 = load %struct.net*, %struct.net** %4, align 8
  %82 = call i32 @rt_genid(%struct.net* %81)
  %83 = load %struct.rtable*, %struct.rtable** %8, align 8
  %84 = getelementptr inbounds %struct.rtable, %struct.rtable* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load %struct.rtable*, %struct.rtable** %7, align 8
  %86 = getelementptr inbounds %struct.rtable, %struct.rtable* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rtable*, %struct.rtable** %8, align 8
  %89 = getelementptr inbounds %struct.rtable, %struct.rtable* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load %struct.rtable*, %struct.rtable** %7, align 8
  %91 = getelementptr inbounds %struct.rtable, %struct.rtable* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rtable*, %struct.rtable** %8, align 8
  %94 = getelementptr inbounds %struct.rtable, %struct.rtable* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.rtable*, %struct.rtable** %7, align 8
  %96 = getelementptr inbounds %struct.rtable, %struct.rtable* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.rtable*, %struct.rtable** %8, align 8
  %99 = getelementptr inbounds %struct.rtable, %struct.rtable* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %struct.rtable*, %struct.rtable** %7, align 8
  %101 = getelementptr inbounds %struct.rtable, %struct.rtable* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rtable*, %struct.rtable** %8, align 8
  %104 = getelementptr inbounds %struct.rtable, %struct.rtable* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.rtable*, %struct.rtable** %7, align 8
  %106 = getelementptr inbounds %struct.rtable, %struct.rtable* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.rtable*, %struct.rtable** %8, align 8
  %109 = getelementptr inbounds %struct.rtable, %struct.rtable* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.rtable*, %struct.rtable** %7, align 8
  %111 = getelementptr inbounds %struct.rtable, %struct.rtable* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rtable*, %struct.rtable** %8, align 8
  %114 = getelementptr inbounds %struct.rtable, %struct.rtable* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.rtable*, %struct.rtable** %7, align 8
  %116 = getelementptr inbounds %struct.rtable, %struct.rtable* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.rtable*, %struct.rtable** %8, align 8
  %119 = getelementptr inbounds %struct.rtable, %struct.rtable* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.rtable*, %struct.rtable** %7, align 8
  %121 = getelementptr inbounds %struct.rtable, %struct.rtable* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load %struct.rtable*, %struct.rtable** %8, align 8
  %124 = getelementptr inbounds %struct.rtable, %struct.rtable* %123, i32 0, i32 1
  store %struct.TYPE_3__* %122, %struct.TYPE_3__** %124, align 8
  %125 = load %struct.rtable*, %struct.rtable** %8, align 8
  %126 = getelementptr inbounds %struct.rtable, %struct.rtable* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = icmp ne %struct.TYPE_3__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %80
  %130 = load %struct.rtable*, %struct.rtable** %8, align 8
  %131 = getelementptr inbounds %struct.rtable, %struct.rtable* %130, i32 0, i32 1
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = call i32 @atomic_inc(i32* %133)
  br label %135

135:                                              ; preds = %129, %80
  %136 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %137 = call i32 @dst_free(%struct.dst_entry* %136)
  br label %138

138:                                              ; preds = %135, %3
  %139 = load %struct.rtable**, %struct.rtable*** %5, align 8
  %140 = load %struct.rtable*, %struct.rtable** %139, align 8
  %141 = getelementptr inbounds %struct.rtable, %struct.rtable* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 @dst_release(%struct.dst_entry* %142)
  %144 = load %struct.rtable*, %struct.rtable** %8, align 8
  %145 = load %struct.rtable**, %struct.rtable*** %5, align 8
  store %struct.rtable* %144, %struct.rtable** %145, align 8
  %146 = load %struct.rtable*, %struct.rtable** %8, align 8
  %147 = icmp ne %struct.rtable* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %152

149:                                              ; preds = %138
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  br label %152

152:                                              ; preds = %149, %148
  %153 = phi i32 [ 0, %148 ], [ %151, %149 ]
  ret i32 %153
}

declare dso_local i64 @dst_alloc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_hold(i64) #1

declare dso_local i32 @in_dev_hold(i64) #1

declare dso_local i32 @rt_genid(%struct.net*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dst_free(%struct.dst_entry*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
