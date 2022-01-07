; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.nfs_server* }
%struct.nfs_server = type { i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nfs_parsed_mount_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.nfs_mount_data = type { i32 }
%struct.nfs4_mount_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NFS_MOUNT_NOAC = common dso_local global i32 0, align 4
@MS_SYNCHRONOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @nfs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_server*, align 8
  %10 = alloca %struct.nfs_parsed_mount_data*, align 8
  %11 = alloca %struct.nfs_mount_data*, align 8
  %12 = alloca %struct.nfs4_mount_data*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.nfs_server*, %struct.nfs_server** %15, align 8
  store %struct.nfs_server* %16, %struct.nfs_server** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.nfs_mount_data*
  store %struct.nfs_mount_data* %18, %struct.nfs_mount_data** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.nfs4_mount_data*
  store %struct.nfs4_mount_data* %20, %struct.nfs4_mount_data** %12, align 8
  %21 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %22 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %21, i32 0, i32 5
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %12, align 8
  %32 = icmp ne %struct.nfs4_mount_data* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %12, align 8
  %35 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %54, label %38

38:                                               ; preds = %33, %3
  %39 = load i32, i32* %13, align 4
  %40 = icmp sle i32 %39, 3
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.nfs_mount_data*, %struct.nfs_mount_data** %11, align 8
  %43 = icmp ne %struct.nfs_mount_data* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.nfs_mount_data*, %struct.nfs_mount_data** %11, align 8
  %46 = getelementptr inbounds %struct.nfs_mount_data, %struct.nfs_mount_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.nfs_mount_data*, %struct.nfs_mount_data** %11, align 8
  %51 = getelementptr inbounds %struct.nfs_mount_data, %struct.nfs_mount_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %52, 6
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %41, %33, %30
  store i32 0, i32* %4, align 4
  br label %194

55:                                               ; preds = %49, %44, %38
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.nfs_parsed_mount_data* @kzalloc(i32 64, i32 %56)
  store %struct.nfs_parsed_mount_data* %57, %struct.nfs_parsed_mount_data** %10, align 8
  %58 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %59 = icmp eq %struct.nfs_parsed_mount_data* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %194

63:                                               ; preds = %55
  %64 = call i32 (...) @lock_kernel()
  %65 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %66 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %69 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %71 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %74 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 8
  %75 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %76 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %79 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %81 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %80, i32 0, i32 7
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %88 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %90 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %89, i32 0, i32 7
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %97 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %95, i32* %99, align 4
  %100 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %101 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @HZ, align 4
  %104 = udiv i32 %102, %103
  %105 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %106 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %108 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @HZ, align 4
  %111 = udiv i32 %109, %110
  %112 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %113 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %115 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @HZ, align 4
  %118 = udiv i32 %116, %117
  %119 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %120 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %122 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @HZ, align 4
  %125 = udiv i32 %123, %124
  %126 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %127 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %129 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %128, i32 0, i32 7
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = mul i32 10, %134
  %136 = load i32, i32* @HZ, align 4
  %137 = udiv i32 %135, %136
  %138 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %139 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %141 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %144 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 8
  %146 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %147 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %146, i32 0, i32 5
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %152 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  %154 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %155 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %158 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %157, i32 0, i32 5
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %162 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @memcpy(i32* %156, i32* %160, i32 %164)
  %166 = load %struct.nfs_mount_data*, %struct.nfs_mount_data** %11, align 8
  %167 = bitcast %struct.nfs_mount_data* %166 to i8*
  %168 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %169 = call i32 @nfs_parse_mount_options(i8* %167, %struct.nfs_parsed_mount_data* %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %63
  br label %189

173:                                              ; preds = %63
  %174 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %175 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @NFS_MOUNT_NOAC, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load i32, i32* @MS_SYNCHRONOUS, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %181
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %180, %173
  %186 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %187 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %188 = call i32 @nfs_compare_remount_data(%struct.nfs_server* %186, %struct.nfs_parsed_mount_data* %187)
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %185, %172
  %190 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %191 = call i32 @kfree(%struct.nfs_parsed_mount_data* %190)
  %192 = call i32 (...) @unlock_kernel()
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %189, %60, %54
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local %struct.nfs_parsed_mount_data* @kzalloc(i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfs_parse_mount_options(i8*, %struct.nfs_parsed_mount_data*) #1

declare dso_local i32 @nfs_compare_remount_data(%struct.nfs_server*, %struct.nfs_parsed_mount_data*) #1

declare dso_local i32 @kfree(%struct.nfs_parsed_mount_data*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
