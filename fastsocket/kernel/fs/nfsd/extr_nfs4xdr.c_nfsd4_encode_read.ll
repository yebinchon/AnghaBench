; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32*, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.nfsd4_read = type { i64, i32, i64, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@nfserr_resource = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@nfserr_symlink = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_read*)* @nfsd4_encode_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_read(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_read* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_read*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_read* %2, %struct.nfsd4_read** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %4, align 4
  br label %226

18:                                               ; preds = %3
  %19 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @nfserr_resource, align 4
  store i32 %26, i32* %4, align 4
  br label %226

27:                                               ; preds = %18
  %28 = call i32 @RESERVE_SPACE(i32 8)
  %29 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = call i64 @svc_max_payload(%struct.TYPE_14__* %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %35 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %40 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %12, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %80, %42
  %45 = load i64, i64* %12, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %44
  %48 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %49 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  %54 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %55 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %54, i32 0, i32 1
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @page_address(i32 %62)
  %64 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %65 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  store i32 %63, i32* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %47
  %77 = load i64, i64* %12, align 8
  br label %80

78:                                               ; preds = %47
  %79 = load i64, i64* @PAGE_SIZE, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %83 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %82, i32 0, i32 1
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  store i64 %81, i64* %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = load i64, i64* %12, align 8
  %95 = sub nsw i64 %94, %93
  store i64 %95, i64* %12, align 8
  br label %44

96:                                               ; preds = %44
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %99 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %101 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %104 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %103, i32 0, i32 3
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %107 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %110 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %113 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %112, i32 0, i32 1
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %118 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @nfsd_read_file(i32 %102, %struct.TYPE_15__* %105, i32 %108, i64 %111, %struct.TYPE_16__* %116, i32 %119, i64* %11)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @nfserr_symlink, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %96
  %125 = load i32, i32* @nfserr_inval, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %124, %96
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %4, align 4
  br label %226

131:                                              ; preds = %126
  %132 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %133 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %134, %135
  %137 = load %struct.nfsd4_read*, %struct.nfsd4_read** %7, align 8
  %138 = getelementptr inbounds %struct.nfsd4_read, %struct.nfsd4_read* %137, i32 0, i32 3
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp uge i64 %136, %145
  %147 = zext i1 %146 to i32
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @WRITE32(i64 %149)
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @WRITE32(i64 %151)
  %153 = call i32 (...) @ADJUST_ARGS()
  %154 = load i32*, i32** %13, align 8
  %155 = bitcast i32* %154 to i8*
  %156 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %157 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %156, i32 0, i32 0
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = ptrtoint i8* %155 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %170 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %169, i32 0, i32 0
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  store i32 %168, i32* %175, align 8
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %178 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %177, i32 0, i32 0
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  store i64 %176, i64* %180, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %183 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  store i32* %181, i32** %188, align 8
  %189 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %190 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %189, i32 0, i32 0
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  store i32 0, i32* %195, align 8
  %196 = load i64, i64* %11, align 8
  %197 = and i64 %196, 3
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %225

199:                                              ; preds = %131
  %200 = call i32 @RESERVE_SPACE(i32 4)
  %201 = call i32 @WRITE32(i64 0)
  %202 = load i64, i64* %11, align 8
  %203 = and i64 %202, 3
  %204 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %205 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %204, i32 0, i32 0
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 %203
  store i32* %212, i32** %210, align 8
  %213 = load i64, i64* %11, align 8
  %214 = and i64 %213, 3
  %215 = sub i64 4, %214
  %216 = trunc i64 %215 to i32
  %217 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %218 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %217, i32 0, i32 0
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  store i32 %216, i32* %223, align 8
  %224 = call i32 (...) @ADJUST_ARGS()
  br label %225

225:                                              ; preds = %199, %131
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %129, %25, %16
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local i32 @RESERVE_SPACE(i32) #1

declare dso_local i64 @svc_max_payload(%struct.TYPE_14__*) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @nfsd_read_file(i32, %struct.TYPE_15__*, i32, i64, %struct.TYPE_16__*, i32, i64*) #1

declare dso_local i32 @WRITE32(i64) #1

declare dso_local i32 @ADJUST_ARGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
