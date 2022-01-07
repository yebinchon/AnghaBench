; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_upcall.c_venus_pioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_upcall.c_venus_pioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.CodaFid = type { i32 }
%struct.PioctlData = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%union.inputArgs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i8*, %struct.CodaFid }
%union.outputArgs = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@VC_MAXMSGSIZE = common dso_local global i32 0, align 4
@CODA_IOCTL = common dso_local global i32 0, align 4
@VC_MAXDATASIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PIOCPARM_MASK = common dso_local global i32 0, align 4
@ioctl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"coda_pioctl: Venus returns: %d for %s\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_pioctl(%struct.super_block* %0, %struct.CodaFid* %1, i32 %2, %struct.PioctlData* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.CodaFid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.PioctlData*, align 8
  %9 = alloca %union.inputArgs*, align 8
  %10 = alloca %union.outputArgs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.CodaFid* %1, %struct.CodaFid** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.PioctlData* %3, %struct.PioctlData** %8, align 8
  %15 = load i32, i32* @VC_MAXMSGSIZE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @CODA_IOCTL, align 4
  %17 = call i32 @UPARG(i32 %16)
  %18 = load %struct.PioctlData*, %struct.PioctlData** %8, align 8
  %19 = getelementptr inbounds %struct.PioctlData, %struct.PioctlData* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VC_MAXDATASIZE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  br label %173

27:                                               ; preds = %4
  %28 = load %struct.PioctlData*, %struct.PioctlData** %8, align 8
  %29 = getelementptr inbounds %struct.PioctlData, %struct.PioctlData* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VC_MAXDATASIZE, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  br label %173

37:                                               ; preds = %27
  %38 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %39 = bitcast %union.inputArgs* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load %struct.CodaFid*, %struct.CodaFid** %6, align 8
  %42 = bitcast %struct.CodaFid* %40 to i8*
  %43 = bitcast %struct.CodaFid* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PIOCPARM_MASK, align 4
  %46 = shl i32 %45, 16
  %47 = xor i32 %46, -1
  %48 = and i32 %44, %47
  %49 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %50 = bitcast %union.inputArgs* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = lshr i32 %52, 16
  %54 = load i32, i32* @PIOCPARM_MASK, align 4
  %55 = and i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = sub i64 %56, 8
  %58 = sub i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @PIOCPARM_MASK, align 4
  %62 = and i32 %60, %61
  %63 = shl i32 %62, 16
  %64 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %65 = bitcast %union.inputArgs* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 8
  %69 = load %struct.PioctlData*, %struct.PioctlData** %8, align 8
  %70 = getelementptr inbounds %struct.PioctlData, %struct.PioctlData* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %74 = bitcast %union.inputArgs* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  %76 = load i32, i32* @ioctl, align 4
  %77 = call i64 @INSIZE(i32 %76)
  %78 = inttoptr i64 %77 to i8*
  %79 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %80 = bitcast %union.inputArgs* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %83 = bitcast %union.inputArgs* %82 to i8*
  %84 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %85 = bitcast %union.inputArgs* %84 to %struct.TYPE_4__*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  %90 = load %struct.PioctlData*, %struct.PioctlData** %8, align 8
  %91 = getelementptr inbounds %struct.PioctlData, %struct.PioctlData* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.PioctlData*, %struct.PioctlData** %8, align 8
  %95 = getelementptr inbounds %struct.PioctlData, %struct.PioctlData* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @copy_from_user(i8* %89, i32 %93, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %37
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  br label %173

103:                                              ; preds = %37
  %104 = load %struct.super_block*, %struct.super_block** %5, align 8
  %105 = call i32 @coda_vcp(%struct.super_block* %104)
  %106 = load i32, i32* @ioctl, align 4
  %107 = call i64 @SIZE(i32 %106)
  %108 = load %struct.PioctlData*, %struct.PioctlData** %8, align 8
  %109 = getelementptr inbounds %struct.PioctlData, %struct.PioctlData* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %107, %111
  %113 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %114 = call i32 @coda_upcall(i32 %105, i64 %112, i32* %12, %union.inputArgs* %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %103
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.CodaFid*, %struct.CodaFid** %6, align 8
  %120 = call i32 @coda_f2s(%struct.CodaFid* %119)
  %121 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %120)
  br label %173

122:                                              ; preds = %103
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = load %union.outputArgs*, %union.outputArgs** %10, align 8
  %126 = bitcast %union.outputArgs* %125 to %struct.TYPE_6__*
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %union.outputArgs*, %union.outputArgs** %10, align 8
  %130 = bitcast %union.outputArgs* %129 to %struct.TYPE_6__*
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %128, %132
  %134 = icmp slt i64 %124, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %13, align 4
  br label %173

138:                                              ; preds = %122
  %139 = load %union.outputArgs*, %union.outputArgs** %10, align 8
  %140 = bitcast %union.outputArgs* %139 to %struct.TYPE_6__*
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.PioctlData*, %struct.PioctlData** %8, align 8
  %144 = getelementptr inbounds %struct.PioctlData, %struct.PioctlData* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %142, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %13, align 4
  br label %173

151:                                              ; preds = %138
  %152 = load %struct.PioctlData*, %struct.PioctlData** %8, align 8
  %153 = getelementptr inbounds %struct.PioctlData, %struct.PioctlData* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %union.outputArgs*, %union.outputArgs** %10, align 8
  %157 = bitcast %union.outputArgs* %156 to i8*
  %158 = load %union.outputArgs*, %union.outputArgs** %10, align 8
  %159 = bitcast %union.outputArgs* %158 to %struct.TYPE_6__*
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i8, i8* %157, i64 %161
  %163 = load %union.outputArgs*, %union.outputArgs** %10, align 8
  %164 = bitcast %union.outputArgs* %163 to %struct.TYPE_6__*
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @copy_to_user(i32 %155, i8* %162, i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %151
  %170 = load i32, i32* @EFAULT, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %13, align 4
  br label %173

172:                                              ; preds = %151
  br label %173

173:                                              ; preds = %172, %169, %148, %135, %117, %100, %34, %24
  %174 = load %union.inputArgs*, %union.inputArgs** %9, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @CODA_FREE(%union.inputArgs* %174, i32 %175)
  %177 = load i32, i32* %13, align 4
  ret i32 %177
}

declare dso_local i32 @UPARG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @INSIZE(i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i64) #1

declare dso_local i32 @coda_upcall(i32, i64, i32*, %union.inputArgs*) #1

declare dso_local i32 @coda_vcp(%struct.super_block*) #1

declare dso_local i64 @SIZE(i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @coda_f2s(%struct.CodaFid*) #1

declare dso_local i64 @copy_to_user(i32, i8*, i64) #1

declare dso_local i32 @CODA_FREE(%union.inputArgs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
