; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i64, %struct.neighbour*, i32, %struct.net_device*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.neighbour*)*, i32, i64 }
%struct.neigh_table = type { i32, i32 (%struct.neighbour*)*, i32, i64 (i8*, %struct.net_device*)*, i32, %struct.neighbour**, i32 }
%struct.net_device = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"neigh %p is created.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.neighbour* @neigh_create(%struct.neigh_table* %0, i8* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.neigh_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca %struct.neighbour*, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %13 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %14 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %17 = call %struct.neighbour* @neigh_alloc(%struct.neigh_table* %16)
  store %struct.neighbour* %17, %struct.neighbour** %12, align 8
  %18 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %19 = icmp ne %struct.neighbour* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOBUFS, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.neighbour* @ERR_PTR(i32 %22)
  store %struct.neighbour* %23, %struct.neighbour** %11, align 8
  br label %180

24:                                               ; preds = %3
  %25 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %26 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @memcpy(i32 %27, i8* %28, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %33 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %32, i32 0, i32 3
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i32 @dev_hold(%struct.net_device* %34)
  %36 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %37 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %36, i32 0, i32 1
  %38 = load i32 (%struct.neighbour*)*, i32 (%struct.neighbour*)** %37, align 8
  %39 = icmp ne i32 (%struct.neighbour*)* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %24
  %41 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %42 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %41, i32 0, i32 1
  %43 = load i32 (%struct.neighbour*)*, i32 (%struct.neighbour*)** %42, align 8
  %44 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %45 = call i32 %43(%struct.neighbour* %44)
  store i32 %45, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.neighbour* @ERR_PTR(i32 %48)
  store %struct.neighbour* %49, %struct.neighbour** %11, align 8
  br label %186

50:                                               ; preds = %40, %24
  %51 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %52 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.neighbour*)*, i32 (%struct.neighbour*)** %54, align 8
  %56 = icmp ne i32 (%struct.neighbour*)* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %59 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.neighbour*)*, i32 (%struct.neighbour*)** %61, align 8
  %63 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %64 = call i32 %62(%struct.neighbour* %63)
  store i32 %64, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = call %struct.neighbour* @ERR_PTR(i32 %67)
  store %struct.neighbour* %68, %struct.neighbour** %11, align 8
  br label %186

69:                                               ; preds = %57, %50
  %70 = load i64, i64* @jiffies, align 8
  %71 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %72 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %70, %77
  %79 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %80 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %79, i32 0, i32 5
  store i64 %78, i64* %80, align 8
  %81 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %82 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %81, i32 0, i32 4
  %83 = call i32 @write_lock_bh(i32* %82)
  %84 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %85 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %84, i32 0, i32 6
  %86 = call i32 @atomic_read(i32* %85)
  %87 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %88 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  %91 = icmp sgt i32 %86, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %69
  %93 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %94 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %95 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  %98 = shl i32 %97, 1
  %99 = call i32 @neigh_hash_grow(%struct.neigh_table* %93, i32 %98)
  br label %100

100:                                              ; preds = %92, %69
  %101 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %102 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %101, i32 0, i32 3
  %103 = load i64 (i8*, %struct.net_device*)*, i64 (i8*, %struct.net_device*)** %102, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.net_device*, %struct.net_device** %6, align 8
  %106 = call i64 %103(i8* %104, %struct.net_device* %105)
  %107 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %108 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = and i64 %106, %110
  store i64 %111, i64* %7, align 8
  %112 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %113 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %112, i32 0, i32 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %100
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  %121 = call %struct.neighbour* @ERR_PTR(i32 %120)
  store %struct.neighbour* %121, %struct.neighbour** %11, align 8
  br label %182

122:                                              ; preds = %100
  %123 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %124 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %123, i32 0, i32 5
  %125 = load %struct.neighbour**, %struct.neighbour*** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %125, i64 %126
  %128 = load %struct.neighbour*, %struct.neighbour** %127, align 8
  store %struct.neighbour* %128, %struct.neighbour** %10, align 8
  br label %129

129:                                              ; preds = %151, %122
  %130 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %131 = icmp ne %struct.neighbour* %130, null
  br i1 %131, label %132, label %155

132:                                              ; preds = %129
  %133 = load %struct.net_device*, %struct.net_device** %6, align 8
  %134 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %135 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %134, i32 0, i32 3
  %136 = load %struct.net_device*, %struct.net_device** %135, align 8
  %137 = icmp eq %struct.net_device* %133, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %132
  %139 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %140 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @memcmp(i32 %141, i8* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %138
  %147 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %148 = call i32 @neigh_hold(%struct.neighbour* %147)
  %149 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  store %struct.neighbour* %149, %struct.neighbour** %11, align 8
  br label %182

150:                                              ; preds = %138, %132
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %153 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %152, i32 0, i32 1
  %154 = load %struct.neighbour*, %struct.neighbour** %153, align 8
  store %struct.neighbour* %154, %struct.neighbour** %10, align 8
  br label %129

155:                                              ; preds = %129
  %156 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %157 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %156, i32 0, i32 5
  %158 = load %struct.neighbour**, %struct.neighbour*** %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %158, i64 %159
  %161 = load %struct.neighbour*, %struct.neighbour** %160, align 8
  %162 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %163 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %162, i32 0, i32 1
  store %struct.neighbour* %161, %struct.neighbour** %163, align 8
  %164 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %165 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %166 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %165, i32 0, i32 5
  %167 = load %struct.neighbour**, %struct.neighbour*** %166, align 8
  %168 = load i64, i64* %7, align 8
  %169 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %167, i64 %168
  store %struct.neighbour* %164, %struct.neighbour** %169, align 8
  %170 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %171 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %173 = call i32 @neigh_hold(%struct.neighbour* %172)
  %174 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %175 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %174, i32 0, i32 4
  %176 = call i32 @write_unlock_bh(i32* %175)
  %177 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %178 = call i32 @NEIGH_PRINTK2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.neighbour* %177)
  %179 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  store %struct.neighbour* %179, %struct.neighbour** %11, align 8
  br label %180

180:                                              ; preds = %186, %155, %20
  %181 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  ret %struct.neighbour* %181

182:                                              ; preds = %146, %118
  %183 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %184 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %183, i32 0, i32 4
  %185 = call i32 @write_unlock_bh(i32* %184)
  br label %186

186:                                              ; preds = %182, %66, %47
  %187 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %188 = call i32 @neigh_release(%struct.neighbour* %187)
  br label %180
}

declare dso_local %struct.neighbour* @neigh_alloc(%struct.neigh_table*) #1

declare dso_local %struct.neighbour* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @neigh_hash_grow(%struct.neigh_table*, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @neigh_hold(%struct.neighbour*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @NEIGH_PRINTK2(i8*, %struct.neighbour*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
