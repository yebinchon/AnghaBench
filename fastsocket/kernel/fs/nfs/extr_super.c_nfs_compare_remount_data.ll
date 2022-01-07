; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_compare_remount_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_compare_remount_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i64, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.nfs_parsed_mount_data = type { i64, i64, i64, i64, i64*, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.sockaddr = type { i32 }

@HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_parsed_mount_data*)* @nfs_compare_remount_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_compare_remount_data(%struct.nfs_server* %0, %struct.nfs_parsed_mount_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_parsed_mount_data*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_parsed_mount_data* %1, %struct.nfs_parsed_mount_data** %5, align 8
  %6 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %7 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %142, label %13

13:                                               ; preds = %2
  %14 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %142, label %21

21:                                               ; preds = %13
  %22 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %26 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %142, label %29

29:                                               ; preds = %21
  %30 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %34 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %33, i32 0, i32 9
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %32, %39
  br i1 %40, label %142, label %41

41:                                               ; preds = %29
  %42 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %43 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %47, i32 0, i32 9
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %46, %53
  br i1 %54, label %142, label %55

55:                                               ; preds = %41
  %56 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %57 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @HZ, align 4
  %63 = udiv i32 %61, %62
  %64 = icmp ne i32 %58, %63
  br i1 %64, label %142, label %65

65:                                               ; preds = %55
  %66 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %67 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %70 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HZ, align 4
  %73 = udiv i32 %71, %72
  %74 = icmp ne i32 %68, %73
  br i1 %74, label %142, label %75

75:                                               ; preds = %65
  %76 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %77 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %80 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HZ, align 4
  %83 = udiv i32 %81, %82
  %84 = icmp ne i32 %78, %83
  br i1 %84, label %142, label %85

85:                                               ; preds = %75
  %86 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %87 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %90 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HZ, align 4
  %93 = udiv i32 %91, %92
  %94 = icmp ne i32 %88, %93
  br i1 %94, label %142, label %95

95:                                               ; preds = %85
  %96 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %97 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %100 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %99, i32 0, i32 9
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = mul i32 10, %105
  %107 = load i32, i32* @HZ, align 4
  %108 = udiv i32 %106, %107
  %109 = icmp ne i32 %98, %108
  br i1 %109, label %142, label %110

110:                                              ; preds = %95
  %111 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %112 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %111, i32 0, i32 10
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %116 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %142, label %119

119:                                              ; preds = %110
  %120 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %121 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %120, i32 0, i32 10
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %125 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %124, i32 0, i32 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %123, %128
  br i1 %129, label %142, label %130

130:                                              ; preds = %119
  %131 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %132 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %131, i32 0, i32 10
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = bitcast i32* %133 to %struct.sockaddr*
  %135 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %136 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %135, i32 0, i32 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = bitcast i32* %138 to %struct.sockaddr*
  %140 = call i32 @rpc_cmp_addr(%struct.sockaddr* %134, %struct.sockaddr* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %130, %119, %110, %95, %85, %75, %65, %55, %41, %29, %21, %13, %2
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %142
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @rpc_cmp_addr(%struct.sockaddr*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
