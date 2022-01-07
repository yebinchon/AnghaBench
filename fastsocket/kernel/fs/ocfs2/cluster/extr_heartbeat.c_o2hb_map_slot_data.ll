; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_map_slot_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_map_slot_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32, i32, i32, i32, %struct.o2hb_disk_slot*, %struct.page**, i32* }
%struct.o2hb_disk_slot = type { i32, %struct.o2hb_disk_heartbeat_block*, i32 }
%struct.o2hb_disk_heartbeat_block = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Going to require %u pages to cover %u blocks at %u blocks per page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*)* @o2hb_map_slot_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_map_slot_data(%struct.o2hb_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2hb_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.o2hb_disk_slot*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %3, align 8
  %11 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %12 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %15 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kmalloc(i32 %16, i32 %17)
  %19 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %20 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %19, i32 0, i32 6
  store i32* %18, i32** %20, align 8
  %21 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %22 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @mlog_errno(i32 %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %194

31:                                               ; preds = %1
  %32 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %33 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 24, i32 %35)
  %37 = bitcast i8* %36 to %struct.o2hb_disk_slot*
  %38 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %39 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %38, i32 0, i32 4
  store %struct.o2hb_disk_slot* %37, %struct.o2hb_disk_slot** %39, align 8
  %40 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %41 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %40, i32 0, i32 4
  %42 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %41, align 8
  %43 = icmp eq %struct.o2hb_disk_slot* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i32 @mlog_errno(i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %194

50:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %72, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %54 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %59 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %58, i32 0, i32 4
  %60 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %60, i64 %62
  store %struct.o2hb_disk_slot* %63, %struct.o2hb_disk_slot** %10, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %10, align 8
  %66 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %10, align 8
  %68 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %67, i32 0, i32 2
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %10, align 8
  %71 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %70, i32 0, i32 1
  store %struct.o2hb_disk_heartbeat_block* null, %struct.o2hb_disk_heartbeat_block** %71, align 8
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %77 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %78, %79
  %81 = sub i32 %80, 1
  %82 = load i32, i32* %7, align 4
  %83 = udiv i32 %81, %82
  %84 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %85 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @ML_HEARTBEAT, align 4
  %87 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %88 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %91 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @mlog(i32 %86, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92, i32 %93)
  %95 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %96 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kcalloc(i32 %97, i32 8, i32 %98)
  %100 = bitcast i8* %99 to %struct.page**
  %101 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %102 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %101, i32 0, i32 5
  store %struct.page** %100, %struct.page*** %102, align 8
  %103 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %104 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %103, i32 0, i32 5
  %105 = load %struct.page**, %struct.page*** %104, align 8
  %106 = icmp ne %struct.page** %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %75
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  %110 = call i32 @mlog_errno(i32 %109)
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %194

113:                                              ; preds = %75
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %190, %113
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %117 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ult i32 %115, %118
  br i1 %119, label %120, label %193

120:                                              ; preds = %114
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call %struct.page* @alloc_page(i32 %121)
  store %struct.page* %122, %struct.page** %8, align 8
  %123 = load %struct.page*, %struct.page** %8, align 8
  %124 = icmp ne %struct.page* %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  %128 = call i32 @mlog_errno(i32 %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %194

131:                                              ; preds = %120
  %132 = load %struct.page*, %struct.page** %8, align 8
  %133 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %134 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %133, i32 0, i32 5
  %135 = load %struct.page**, %struct.page*** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.page*, %struct.page** %135, i64 %137
  store %struct.page* %132, %struct.page** %138, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %7, align 4
  %141 = mul i32 %139, %140
  store i32 %141, i32* %6, align 4
  %142 = load %struct.page*, %struct.page** %8, align 8
  %143 = call i8* @page_address(%struct.page* %142)
  store i8* %143, i8** %9, align 8
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %186, %131
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = add i32 %149, %150
  %152 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %153 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ult i32 %151, %154
  br label %156

156:                                              ; preds = %148, %144
  %157 = phi i1 [ false, %144 ], [ %155, %148 ]
  br i1 %157, label %158, label %189

158:                                              ; preds = %156
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %6, align 4
  %161 = add i32 %159, %160
  %162 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %163 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp uge i32 %161, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @BUG_ON(i32 %166)
  %168 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %169 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %168, i32 0, i32 4
  %170 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %6, align 4
  %173 = add i32 %171, %172
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %170, i64 %174
  store %struct.o2hb_disk_slot* %175, %struct.o2hb_disk_slot** %10, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = bitcast i8* %176 to %struct.o2hb_disk_heartbeat_block*
  %178 = load %struct.o2hb_disk_slot*, %struct.o2hb_disk_slot** %10, align 8
  %179 = getelementptr inbounds %struct.o2hb_disk_slot, %struct.o2hb_disk_slot* %178, i32 0, i32 1
  store %struct.o2hb_disk_heartbeat_block* %177, %struct.o2hb_disk_heartbeat_block** %179, align 8
  %180 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %181 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i8*, i8** %9, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %9, align 8
  br label %186

186:                                              ; preds = %158
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %144

189:                                              ; preds = %156
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %4, align 4
  br label %114

193:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %193, %125, %107, %44, %25
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
