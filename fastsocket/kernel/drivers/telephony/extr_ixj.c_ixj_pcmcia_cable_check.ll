; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_pcmcia_cable_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_pcmcia_cable_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_30__, i64, %struct.TYPE_29__, %struct.TYPE_28__, i32, i32, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_39__, %struct.TYPE_37__, i32, %struct.TYPE_35__, %struct.TYPE_33__, i64 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__, i8* }
%struct.TYPE_32__ = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@hertz = common dso_local global i32 0, align 4
@PORT_SPEAKER = common dso_local global i32 0, align 4
@PORT_POTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*)* @ixj_pcmcia_cable_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_pcmcia_cable_check(%struct.TYPE_31__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  %4 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 3
  %8 = call i8* @inb_p(i64 %7)
  %9 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %10, i32 0, i32 1
  store i8* %8, i8** %11, align 8
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %141, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 2
  %22 = call i8* @inb_p(i64 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %17
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 12
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33, %17
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 0
  store i32 4, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %646

44:                                               ; preds = %33
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 13
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %130

51:                                               ; preds = %44
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 13
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  store i32 3, i32* %59, align 4
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 0
  %73 = call i32 @outw_p(i32 %68, i64 %72)
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %75 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %74)
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 0
  %80 = call i32 @inw_p(i64 %79)
  %81 = and i32 %80, 255
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 8
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  store i32 3, i32* %100, align 4
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 8
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %109, %113
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 0
  %119 = call i32 @outw_p(i32 %114, i64 %118)
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %121 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %120)
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 1, i32 0
  store i32 %129, i32* %2, align 4
  br label %646

130:                                              ; preds = %44
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %2, align 4
  br label %646

140:                                              ; preds = %130
  store i32 1, i32* %2, align 4
  br label %646

141:                                              ; preds = %1
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 13
  %150 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %147
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 0
  store i32 3, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %147
  store i32 0, i32* %2, align 4
  br label %646

159:                                              ; preds = %141
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 3
  br i1 %164, label %165, label %196

165:                                              ; preds = %159
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 12
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 12
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 4
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 12
  %176 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 2
  %182 = call i32 @outb(i32 %177, i64 %181)
  %183 = load i64, i64* @jiffies, align 8
  %184 = load i32, i32* @hertz, align 4
  %185 = mul nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %183, %186
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 14
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 2
  store i32 1, i32* %192, align 4
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 0
  store i32 2, i32* %195, align 4
  store i32 0, i32* %2, align 4
  br label %646

196:                                              ; preds = %159
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %242

202:                                              ; preds = %196
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %202
  %209 = load i64, i64* @jiffies, align 8
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 14
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @time_before(i64 %209, i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  store i32 0, i32* %2, align 4
  br label %646

216:                                              ; preds = %208
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 2
  store i32 0, i32* %219, align 4
  br label %220

220:                                              ; preds = %216
  br label %221

221:                                              ; preds = %220, %202
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 12
  %224 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i32 0, i32 1
  store i32 0, i32* %225, align 4
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 12
  %228 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 0
  store i32 0, i32* %229, align 4
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 12
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, 2
  %238 = call i32 @outb_p(i32 %233, i64 %237)
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 0
  store i32 1, i32* %241, align 4
  store i32 0, i32* %2, align 4
  br label %646

242:                                              ; preds = %196
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %642

248:                                              ; preds = %242
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 0
  store i32 0, i32* %251, align 4
  %252 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %252, i32 0, i32 13
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %641, label %258

258:                                              ; preds = %248
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 0
  store i32 3, i32* %262, align 4
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 1
  store i32 1, i32* %266, align 4
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, 1
  %275 = call i32 @outb_p(i32 %270, i64 %274)
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %277 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %276)
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 3
  store i32 1, i32* %280, align 4
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, 0
  %285 = call i32 @inw_p(i64 %284)
  %286 = ashr i32 %285, 8
  %287 = and i32 %286, 3
  %288 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %289, i32 0, i32 1
  store i32 %287, i32* %290, align 4
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 3
  br i1 %295, label %296, label %300

296:                                              ; preds = %258
  %297 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %298, i32 0, i32 0
  store i32 4, i32* %299, align 4
  store i32 0, i32* %2, align 4
  br label %646

300:                                              ; preds = %258
  %301 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %327

306:                                              ; preds = %300
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 12
  %309 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 1
  store i32 1, i32* %310, align 4
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 12
  %313 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 0
  store i32 0, i32* %314, align 4
  %315 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %315, i32 0, i32 12
  %317 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = add nsw i64 %321, 2
  %323 = call i32 @outb_p(i32 %318, i64 %322)
  %324 = load i32, i32* @PORT_SPEAKER, align 4
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 11
  store i32 %324, i32* %326, align 8
  br label %331

327:                                              ; preds = %300
  %328 = load i32, i32* @PORT_POTS, align 4
  %329 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %329, i32 0, i32 11
  store i32 %328, i32* %330, align 8
  br label %331

331:                                              ; preds = %327, %306
  br label %332

332:                                              ; preds = %331
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 10
  %335 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %335, i32 0, i32 4
  store i64 0, i64* %336, align 8
  %337 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %337, i32 0, i32 10
  %339 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %339, i32 0, i32 3
  store i64 0, i64* %340, align 8
  %341 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %341, i32 0, i32 10
  %343 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %343, i32 0, i32 2
  store i64 0, i64* %344, align 8
  %345 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %345, i32 0, i32 10
  %347 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %347, i32 0, i32 1
  store i64 0, i64* %348, align 8
  %349 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %349, i32 0, i32 10
  %351 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %351, i32 0, i32 0
  store i32 1, i32* %352, align 8
  %353 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 2
  store i32 1, i32* %356, align 4
  %357 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 0, i32 1
  store i32 0, i32* %360, align 4
  %361 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %361, i32 0, i32 4
  %363 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %363, i32 0, i32 0
  store i32 0, i32* %364, align 4
  %365 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %365, i32 0, i32 10
  %367 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 %371, 0
  %373 = call i32 @outb(i32 %368, i64 %372)
  %374 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %374, i32 0, i32 4
  %376 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %380, 1
  %382 = call i32 @outb(i32 %377, i64 %381)
  %383 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %384 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %383)
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %385, i32 0, i32 9
  %387 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %387, i32 0, i32 4
  store i64 0, i64* %388, align 8
  %389 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %389, i32 0, i32 9
  %391 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %391, i32 0, i32 3
  store i64 0, i64* %392, align 8
  %393 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %393, i32 0, i32 9
  %395 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %395, i32 0, i32 2
  store i64 0, i64* %396, align 8
  %397 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %397, i32 0, i32 9
  %399 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %399, i32 0, i32 1
  store i64 0, i64* %400, align 8
  %401 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %401, i32 0, i32 9
  %403 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %403, i32 0, i32 0
  store i64 0, i64* %404, align 8
  %405 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %405, i32 0, i32 4
  %407 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %407, i32 0, i32 2
  store i32 2, i32* %408, align 4
  %409 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %409, i32 0, i32 4
  %411 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %411, i32 0, i32 1
  store i32 0, i32* %412, align 4
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 4
  %415 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %415, i32 0, i32 0
  store i32 0, i32* %416, align 4
  %417 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %417, i32 0, i32 9
  %419 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = add nsw i64 %423, 0
  %425 = call i32 @outb(i32 %420, i64 %424)
  %426 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %426, i32 0, i32 4
  %428 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %430, i32 0, i32 2
  %432 = load i64, i64* %431, align 8
  %433 = add nsw i64 %432, 1
  %434 = call i32 @outb(i32 %429, i64 %433)
  %435 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %436 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %435)
  %437 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %437, i32 0, i32 4
  %439 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %439, i32 0, i32 2
  store i32 3, i32* %440, align 4
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %441, i32 0, i32 4
  %443 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %443, i32 0, i32 1
  store i32 0, i32* %444, align 4
  %445 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %445, i32 0, i32 4
  %447 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %447, i32 0, i32 0
  store i32 0, i32* %448, align 4
  %449 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %449, i32 0, i32 2
  %451 = load i64, i64* %450, align 8
  %452 = add nsw i64 %451, 0
  %453 = call i32 @outb(i32 0, i64 %452)
  %454 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %454, i32 0, i32 4
  %456 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %458, i32 0, i32 2
  %460 = load i64, i64* %459, align 8
  %461 = add nsw i64 %460, 1
  %462 = call i32 @outb(i32 %457, i64 %461)
  %463 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %464 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %463)
  %465 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %465, i32 0, i32 4
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %467, i32 0, i32 2
  store i32 4, i32* %468, align 4
  %469 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %469, i32 0, i32 4
  %471 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %471, i32 0, i32 1
  store i32 0, i32* %472, align 4
  %473 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %473, i32 0, i32 4
  %475 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %475, i32 0, i32 0
  store i32 0, i32* %476, align 4
  %477 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %478 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %477, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = add nsw i64 %479, 0
  %481 = call i32 @outb(i32 9, i64 %480)
  %482 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %482, i32 0, i32 4
  %484 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %486, i32 0, i32 2
  %488 = load i64, i64* %487, align 8
  %489 = add nsw i64 %488, 1
  %490 = call i32 @outb(i32 %485, i64 %489)
  %491 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %492 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %491)
  %493 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %494 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %493, i32 0, i32 8
  %495 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %495, i32 0, i32 0
  store i32 1, i32* %496, align 8
  %497 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %497, i32 0, i32 8
  %499 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %499, i32 0, i32 1
  store i32 1, i32* %500, align 4
  %501 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %501, i32 0, i32 8
  %503 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %503, i32 0, i32 5
  store i64 0, i64* %504, align 8
  %505 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %505, i32 0, i32 8
  %507 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %507, i32 0, i32 4
  store i64 0, i64* %508, align 8
  %509 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %510 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %509, i32 0, i32 8
  %511 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %511, i32 0, i32 3
  store i64 0, i64* %512, align 8
  %513 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %514 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %513, i32 0, i32 8
  %515 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %515, i32 0, i32 2
  store i32 1, i32* %516, align 8
  %517 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %518 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %517, i32 0, i32 4
  %519 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %519, i32 0, i32 2
  store i32 5, i32* %520, align 4
  %521 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %521, i32 0, i32 4
  %523 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %523, i32 0, i32 1
  store i32 0, i32* %524, align 4
  %525 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %525, i32 0, i32 4
  %527 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %527, i32 0, i32 0
  store i32 0, i32* %528, align 4
  %529 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %530 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %529, i32 0, i32 8
  %531 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %533, i32 0, i32 2
  %535 = load i64, i64* %534, align 8
  %536 = add nsw i64 %535, 0
  %537 = call i32 @outb(i32 %532, i64 %536)
  %538 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %539 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %538, i32 0, i32 4
  %540 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %543 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %542, i32 0, i32 2
  %544 = load i64, i64* %543, align 8
  %545 = add nsw i64 %544, 1
  %546 = call i32 @outb(i32 %541, i64 %545)
  %547 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %548 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %547)
  %549 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %550 = call i32 @ixj_siadc(%struct.TYPE_31__* %549, i32 23)
  %551 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %552 = call i32 @ixj_sidac(%struct.TYPE_31__* %551, i32 29)
  %553 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %554 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %553, i32 0, i32 7
  %555 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %555, i32 0, i32 0
  store i64 0, i64* %556, align 8
  %557 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %558 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %557, i32 0, i32 4
  %559 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %559, i32 0, i32 2
  store i32 9, i32* %560, align 4
  %561 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %562 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %561, i32 0, i32 4
  %563 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %563, i32 0, i32 1
  store i32 0, i32* %564, align 4
  %565 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %566 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %565, i32 0, i32 4
  %567 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %567, i32 0, i32 0
  store i32 0, i32* %568, align 4
  %569 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %570 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %569, i32 0, i32 7
  %571 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %574 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %573, i32 0, i32 2
  %575 = load i64, i64* %574, align 8
  %576 = add nsw i64 %575, 0
  %577 = call i32 @outb(i32 %572, i64 %576)
  %578 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %579 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %578, i32 0, i32 4
  %580 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %583 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %582, i32 0, i32 2
  %584 = load i64, i64* %583, align 8
  %585 = add nsw i64 %584, 1
  %586 = call i32 @outb(i32 %581, i64 %585)
  %587 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %588 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %587)
  %589 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %590 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = icmp eq i32 %592, 1
  br i1 %593, label %594, label %640

594:                                              ; preds = %332
  %595 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %596 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %595, i32 0, i32 6
  %597 = load i32, i32* %596, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %640, label %599

599:                                              ; preds = %594
  %600 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %601 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %600, i32 0, i32 5
  %602 = load i32, i32* %601, align 8
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %640, label %604

604:                                              ; preds = %599
  %605 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %606 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %605, i32 0, i32 3
  %607 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %606, i32 0, i32 0
  store i32 0, i32* %607, align 8
  %608 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %609 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %608, i32 0, i32 4
  %610 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %609, i32 0, i32 0
  store i32 0, i32* %610, align 8
  %611 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %612 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %611, i32 0, i32 3
  %613 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %612, i32 0, i32 1
  %614 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %613, i32 0, i32 1
  store i32 1, i32* %614, align 4
  %615 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %616 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %615, i32 0, i32 4
  %617 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %616, i32 0, i32 1
  %618 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %617, i32 0, i32 0
  store i32 3, i32* %618, align 4
  %619 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %620 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %619, i32 0, i32 4
  %621 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %620, i32 0, i32 1
  %622 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %621, i32 0, i32 1
  store i32 0, i32* %622, align 4
  %623 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %624 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %623, i32 0, i32 4
  %625 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 8
  %627 = shl i32 %626, 8
  %628 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %629 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %628, i32 0, i32 3
  %630 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 8
  %632 = or i32 %627, %631
  %633 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %634 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %633, i32 0, i32 2
  %635 = load i64, i64* %634, align 8
  %636 = add nsw i64 %635, 0
  %637 = call i32 @outw_p(i32 %632, i64 %636)
  %638 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %639 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_31__* %638)
  br label %640

640:                                              ; preds = %604, %599, %594, %332
  br label %641

641:                                              ; preds = %640, %248
  store i32 0, i32* %2, align 4
  br label %646

642:                                              ; preds = %242
  %643 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %644 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %643, i32 0, i32 1
  %645 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %644, i32 0, i32 3
  store i32 0, i32* %645, align 4
  store i32 0, i32* %2, align 4
  br label %646

646:                                              ; preds = %642, %641, %296, %221, %215, %165, %158, %140, %136, %51, %40
  %647 = load i32, i32* %2, align 4
  ret i32 %647
}

declare dso_local i8* @inb_p(i64) #1

declare dso_local i32 @outw_p(i32, i64) #1

declare dso_local i32 @ixj_PCcontrol_wait(%struct.TYPE_31__*) #1

declare dso_local i32 @inw_p(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @ixj_siadc(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ixj_sidac(%struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
