; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_add_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_add_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i32, i32, i32, i32, i8*, i32, i32, i8* }
%struct.gendisk = type { %struct.TYPE_2__*, %struct.disk_part_tbl* }
%struct.TYPE_2__ = type { i32 }
%struct.disk_part_tbl = type { i64* }
%struct.device = type { i32, i32, %struct.device*, i32*, i32* }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%sp%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@block_class = common dso_local global i32 0, align 4
@part_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"holders\00", align 1
@ADDPART_FLAG_WHOLEDISK = common dso_local global i32 0, align 4
@dev_attr_whole_disk = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hd_struct* @add_partition(%struct.gendisk* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.hd_struct*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hd_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca %struct.disk_part_tbl*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = call i32 @MKDEV(i32 0, i32 0)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %21 = call %struct.device* @disk_to_dev(%struct.gendisk* %20)
  store %struct.device* %21, %struct.device** %14, align 8
  %22 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @disk_expand_part_tbl(%struct.gendisk* %22, i32 %23)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* %18, align 4
  %29 = call %struct.hd_struct* @ERR_PTR(i32 %28)
  store %struct.hd_struct* %29, %struct.hd_struct** %6, align 8
  br label %213

30:                                               ; preds = %5
  %31 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %32 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %31, i32 0, i32 1
  %33 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %32, align 8
  store %struct.disk_part_tbl* %33, %struct.disk_part_tbl** %16, align 8
  %34 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %16, align 8
  %35 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.hd_struct* @ERR_PTR(i32 %44)
  store %struct.hd_struct* %45, %struct.hd_struct** %6, align 8
  br label %213

46:                                               ; preds = %30
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.hd_struct* @kzalloc(i32 40, i32 %47)
  store %struct.hd_struct* %48, %struct.hd_struct** %12, align 8
  %49 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %50 = icmp ne %struct.hd_struct* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.hd_struct* @ERR_PTR(i32 %53)
  store %struct.hd_struct* %54, %struct.hd_struct** %6, align 8
  br label %213

55:                                               ; preds = %46
  %56 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %57 = call i32 @init_part_stats(%struct.hd_struct* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %18, align 4
  br label %194

62:                                               ; preds = %55
  %63 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %64 = call %struct.device* @part_to_dev(%struct.hd_struct* %63)
  store %struct.device* %64, %struct.device** %15, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %67 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %69 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @queue_limit_alignment_offset(i32* %71, i8* %72)
  %74 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %75 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %77 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @queue_limit_discard_alignment(i32* %79, i8* %80)
  %82 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %83 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %86 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %89 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %91 = call i32 @get_disk_ro(%struct.gendisk* %90)
  %92 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %93 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.device*, %struct.device** %14, align 8
  %95 = call i8* @dev_name(%struct.device* %94)
  store i8* %95, i8** %17, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isdigit(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %62
  %106 = load %struct.device*, %struct.device** %15, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @dev_set_name(%struct.device* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %107, i32 %108)
  br label %115

110:                                              ; preds = %62
  %111 = load %struct.device*, %struct.device** %15, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @dev_set_name(%struct.device* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.device*, %struct.device** %15, align 8
  %117 = call i32 @device_initialize(%struct.device* %116)
  %118 = load %struct.device*, %struct.device** %15, align 8
  %119 = getelementptr inbounds %struct.device, %struct.device* %118, i32 0, i32 4
  store i32* @block_class, i32** %119, align 8
  %120 = load %struct.device*, %struct.device** %15, align 8
  %121 = getelementptr inbounds %struct.device, %struct.device* %120, i32 0, i32 3
  store i32* @part_type, i32** %121, align 8
  %122 = load %struct.device*, %struct.device** %14, align 8
  %123 = load %struct.device*, %struct.device** %15, align 8
  %124 = getelementptr inbounds %struct.device, %struct.device* %123, i32 0, i32 2
  store %struct.device* %122, %struct.device** %124, align 8
  %125 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %126 = call i32 @blk_alloc_devt(%struct.hd_struct* %125, i32* %13)
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %191

130:                                              ; preds = %115
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.device*, %struct.device** %15, align 8
  %133 = getelementptr inbounds %struct.device, %struct.device* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.device*, %struct.device** %15, align 8
  %135 = call i32 @dev_set_uevent_suppress(%struct.device* %134, i32 1)
  %136 = load %struct.device*, %struct.device** %15, align 8
  %137 = call i32 @device_add(%struct.device* %136)
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %206

141:                                              ; preds = %130
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %18, align 4
  %144 = load %struct.device*, %struct.device** %15, align 8
  %145 = getelementptr inbounds %struct.device, %struct.device* %144, i32 0, i32 0
  %146 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %145)
  %147 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %148 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %150 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %141
  br label %199

154:                                              ; preds = %141
  %155 = load %struct.device*, %struct.device** %15, align 8
  %156 = call i32 @dev_set_uevent_suppress(%struct.device* %155, i32 0)
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @ADDPART_FLAG_WHOLEDISK, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.device*, %struct.device** %15, align 8
  %163 = call i32 @device_create_file(%struct.device* %162, i32* @dev_attr_whole_disk)
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %199

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167, %154
  %169 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %170 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %169, i32 0, i32 2
  %171 = call i32 @INIT_RCU_HEAD(i32* %170)
  %172 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %16, align 8
  %173 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %180 = call i32 @rcu_assign_pointer(i64 %178, %struct.hd_struct* %179)
  %181 = load %struct.device*, %struct.device** %14, align 8
  %182 = call i32 @dev_get_uevent_suppress(%struct.device* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %168
  %185 = load %struct.device*, %struct.device** %15, align 8
  %186 = getelementptr inbounds %struct.device, %struct.device* %185, i32 0, i32 0
  %187 = load i32, i32* @KOBJ_ADD, align 4
  %188 = call i32 @kobject_uevent(i32* %186, i32 %187)
  br label %189

189:                                              ; preds = %184, %168
  %190 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  store %struct.hd_struct* %190, %struct.hd_struct** %6, align 8
  br label %213

191:                                              ; preds = %129
  %192 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %193 = call i32 @free_part_stats(%struct.hd_struct* %192)
  br label %194

194:                                              ; preds = %191, %59
  %195 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %196 = call i32 @kfree(%struct.hd_struct* %195)
  %197 = load i32, i32* %18, align 4
  %198 = call %struct.hd_struct* @ERR_PTR(i32 %197)
  store %struct.hd_struct* %198, %struct.hd_struct** %6, align 8
  br label %213

199:                                              ; preds = %166, %153
  %200 = load %struct.hd_struct*, %struct.hd_struct** %12, align 8
  %201 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @kobject_put(i32 %202)
  %204 = load %struct.device*, %struct.device** %15, align 8
  %205 = call i32 @device_del(%struct.device* %204)
  br label %206

206:                                              ; preds = %199, %140
  %207 = load %struct.device*, %struct.device** %15, align 8
  %208 = call i32 @put_device(%struct.device* %207)
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @blk_free_devt(i32 %209)
  %211 = load i32, i32* %18, align 4
  %212 = call %struct.hd_struct* @ERR_PTR(i32 %211)
  store %struct.hd_struct* %212, %struct.hd_struct** %6, align 8
  br label %213

213:                                              ; preds = %206, %194, %189, %51, %42, %27
  %214 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  ret %struct.hd_struct* %214
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local %struct.device* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @disk_expand_part_tbl(%struct.gendisk*, i32) #1

declare dso_local %struct.hd_struct* @ERR_PTR(i32) #1

declare dso_local %struct.hd_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @init_part_stats(%struct.hd_struct*) #1

declare dso_local %struct.device* @part_to_dev(%struct.hd_struct*) #1

declare dso_local i32 @queue_limit_alignment_offset(i32*, i8*) #1

declare dso_local i32 @queue_limit_discard_alignment(i32*, i8*) #1

declare dso_local i32 @get_disk_ro(%struct.gendisk*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @blk_alloc_devt(%struct.hd_struct*, i32*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.device*, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @kobject_create_and_add(i8*, i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @INIT_RCU_HEAD(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i64, %struct.hd_struct*) #1

declare dso_local i32 @dev_get_uevent_suppress(%struct.device*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @free_part_stats(%struct.hd_struct*) #1

declare dso_local i32 @kfree(%struct.hd_struct*) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @blk_free_devt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
