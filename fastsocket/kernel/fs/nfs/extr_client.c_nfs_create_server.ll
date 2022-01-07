; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_create_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_create_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*)*, i32 }
%struct.nfs_fattr = type { i32, i32 }
%struct.nfs_parsed_mount_data = type { i32 }
%struct.nfs_fh = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFS3_MAXNAMLEN = common dso_local global i64 0, align 8
@NFS_MOUNT_NORDIRPLUS = common dso_local global i32 0, align 4
@NFS_CAP_READDIRPLUS = common dso_local global i32 0, align 4
@NFS2_MAXNAMLEN = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"nfs_create_server: getattr error = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Server FSID: %llx:%llx\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_server* @nfs_create_server(%struct.nfs_parsed_mount_data* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_parsed_mount_data*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_parsed_mount_data* %0, %struct.nfs_parsed_mount_data** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  %9 = call %struct.nfs_server* (...) @nfs_alloc_server()
  store %struct.nfs_server* %9, %struct.nfs_server** %6, align 8
  %10 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %11 = icmp ne %struct.nfs_server* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.nfs_server* @ERR_PTR(i32 %14)
  store %struct.nfs_server* %15, %struct.nfs_server** %3, align 8
  br label %176

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %19, %struct.nfs_fattr** %7, align 8
  %20 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %21 = icmp eq %struct.nfs_fattr* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %169

23:                                               ; preds = %16
  %24 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %25 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %26 = call i32 @nfs_init_server(%struct.nfs_server* %24, %struct.nfs_parsed_mount_data* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %169

30:                                               ; preds = %23
  %31 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %32 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %39 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %48 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %59 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %60 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %61 = call i32 @nfs_probe_fsinfo(%struct.nfs_server* %58, %struct.nfs_fh* %59, %struct.nfs_fattr* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %30
  br label %169

65:                                               ; preds = %30
  %66 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %67 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %103

74:                                               ; preds = %65
  %75 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %76 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %81 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NFS3_MAXNAMLEN, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79, %74
  %86 = load i64, i64* @NFS3_MAXNAMLEN, align 8
  %87 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %88 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %91 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NFS_MOUNT_NORDIRPLUS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @NFS_CAP_READDIRPLUS, align 4
  %98 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %99 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %89
  br label %119

103:                                              ; preds = %65
  %104 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %105 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %110 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NFS2_MAXNAMLEN, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108, %103
  %115 = load i64, i64* @NFS2_MAXNAMLEN, align 8
  %116 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %117 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %108
  br label %119

119:                                              ; preds = %118, %102
  %120 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %121 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %146, label %126

126:                                              ; preds = %119
  %127 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %128 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %127, i32 0, i32 3
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*)** %132, align 8
  %134 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %135 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %136 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %137 = call i32 %133(%struct.nfs_server* %134, %struct.nfs_fh* %135, %struct.nfs_fattr* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %126
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 0, %141
  %143 = sext i32 %142 to i64
  %144 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %143)
  br label %169

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145, %119
  %147 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %148 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %147, i32 0, i32 2
  %149 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %150 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %149, i32 0, i32 1
  %151 = call i32 @memcpy(%struct.TYPE_6__* %148, i32* %150, i32 16)
  %152 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %153 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %157 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %155, i64 %159)
  %161 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %162 = call i32 @nfs_server_insert_lists(%struct.nfs_server* %161)
  %163 = load i32, i32* @jiffies, align 4
  %164 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %165 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  %166 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %167 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %166)
  %168 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  store %struct.nfs_server* %168, %struct.nfs_server** %3, align 8
  br label %176

169:                                              ; preds = %140, %64, %29, %22
  %170 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %171 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %170)
  %172 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %173 = call i32 @nfs_free_server(%struct.nfs_server* %172)
  %174 = load i32, i32* %8, align 4
  %175 = call %struct.nfs_server* @ERR_PTR(i32 %174)
  store %struct.nfs_server* %175, %struct.nfs_server** %3, align 8
  br label %176

176:                                              ; preds = %169, %146, %12
  %177 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  ret %struct.nfs_server* %177
}

declare dso_local %struct.nfs_server* @nfs_alloc_server(...) #1

declare dso_local %struct.nfs_server* @ERR_PTR(i32) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs_init_server(%struct.nfs_server*, %struct.nfs_parsed_mount_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nfs_probe_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*) #1

declare dso_local i32 @dprintk(i8*, i64, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @nfs_server_insert_lists(%struct.nfs_server*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_server(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
