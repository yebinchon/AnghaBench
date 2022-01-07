; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_dst_blackhole.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_dst_blackhole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32, i64, i32*, i8*, i8*, i32 }
%struct.flowi = type { i32 }
%struct.rt6_info = type { i32, i32, i32, i64, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dst_entry }

@ip6_dst_blackhole_ops = common dso_local global i32 0, align 4
@dst_discard = common dso_local global i8* null, align 8
@RTAX_MAX = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_dst_blackhole(%struct.sock* %0, %struct.dst_entry** %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.dst_entry**, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca %struct.rt6_info*, align 8
  %8 = alloca %struct.rt6_info*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.dst_entry** %1, %struct.dst_entry*** %5, align 8
  store %struct.flowi* %2, %struct.flowi** %6, align 8
  %10 = load %struct.dst_entry**, %struct.dst_entry*** %5, align 8
  %11 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %12 = bitcast %struct.dst_entry* %11 to %struct.rt6_info*
  store %struct.rt6_info* %12, %struct.rt6_info** %7, align 8
  %13 = call i64 @dst_alloc(i32* @ip6_dst_blackhole_ops)
  %14 = inttoptr i64 %13 to %struct.rt6_info*
  store %struct.rt6_info* %14, %struct.rt6_info** %8, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %9, align 8
  %15 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %16 = icmp ne %struct.rt6_info* %15, null
  br i1 %16, label %17, label %101

17:                                               ; preds = %3
  %18 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %19 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.dst_entry* %20, %struct.dst_entry** %9, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %22 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %21, i32 0, i32 5
  %23 = call i32 @atomic_set(i32* %22, i32 1)
  %24 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %25 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i8*, i8** @dst_discard, align 8
  %27 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %28 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @dst_discard, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %33 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %36 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @RTAX_MAX, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32* %34, i32* %39, i32 %43)
  %45 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %46 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %51 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %53 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %17
  %57 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %58 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_hold(i64 %59)
  br label %61

61:                                               ; preds = %56, %17
  %62 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %63 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %66 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %65, i32 0, i32 6
  store i64 %64, i64* %66, align 8
  %67 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %68 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %73 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @in6_dev_hold(i64 %74)
  br label %76

76:                                               ; preds = %71, %61
  %77 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %78 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %80 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %79, i32 0, i32 4
  %81 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %82 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %81, i32 0, i32 4
  %83 = call i32 @ipv6_addr_copy(i32* %80, i32* %82)
  %84 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %85 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @RTF_EXPIRES, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %91 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %93 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %95 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %94, i32 0, i32 2
  %96 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %97 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %96, i32 0, i32 2
  %98 = call i32 @memcpy(i32* %95, i32* %97, i32 4)
  %99 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %100 = call i32 @dst_free(%struct.dst_entry* %99)
  br label %101

101:                                              ; preds = %76, %3
  %102 = load %struct.dst_entry**, %struct.dst_entry*** %5, align 8
  %103 = load %struct.dst_entry*, %struct.dst_entry** %102, align 8
  %104 = call i32 @dst_release(%struct.dst_entry* %103)
  %105 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %106 = load %struct.dst_entry**, %struct.dst_entry*** %5, align 8
  store %struct.dst_entry* %105, %struct.dst_entry** %106, align 8
  %107 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %108 = icmp ne %struct.dst_entry* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %113

110:                                              ; preds = %101
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  br label %113

113:                                              ; preds = %110, %109
  %114 = phi i32 [ 0, %109 ], [ %112, %110 ]
  ret i32 %114
}

declare dso_local i64 @dst_alloc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_hold(i64) #1

declare dso_local i32 @in6_dev_hold(i64) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local i32 @dst_free(%struct.dst_entry*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
