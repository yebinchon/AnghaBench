; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i64, i32, i32, i64, i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.svc_procedure* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.svc_procedure = type { i64 (%struct.svc_rqst*, i32, i32)*, i32 (%struct.svc_rqst*, i64*, i32)*, i32 (%struct.svc_rqst*, i64*, i32)*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"nfsd_dispatch: vers %d proc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"nfsd: failed to decode arguments!\0A\00", align 1
@rpc_garbage_args = common dso_local global i64 0, align 8
@nfserr_dropit = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"nfsd: Dropping request; may be revisited later\0A\00", align 1
@RC_NOCACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"nfsd: failed to encode result!\0A\00", align 1
@rpc_system_err = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_dispatch(%struct.svc_rqst* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.svc_procedure*, align 8
  %7 = alloca i32 (%struct.svc_rqst*, i64*, i32)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %15)
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %18 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %17, i32 0, i32 8
  %19 = load %struct.svc_procedure*, %struct.svc_procedure** %18, align 8
  store %struct.svc_procedure* %19, %struct.svc_procedure** %6, align 8
  %20 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %21 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %24 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %26 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %25, i32 0, i32 2
  %27 = load i32 (%struct.svc_rqst*, i64*, i32)*, i32 (%struct.svc_rqst*, i64*, i32)** %26, align 8
  store i32 (%struct.svc_rqst*, i64*, i32)* %27, i32 (%struct.svc_rqst*, i64*, i32)** %7, align 8
  %28 = load i32 (%struct.svc_rqst*, i64*, i32)*, i32 (%struct.svc_rqst*, i64*, i32)** %7, align 8
  %29 = icmp ne i32 (%struct.svc_rqst*, i64*, i32)* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %2
  %31 = load i32 (%struct.svc_rqst*, i64*, i32)*, i32 (%struct.svc_rqst*, i64*, i32)** %7, align 8
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %34 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i64*
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %42 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %31(%struct.svc_rqst* %32, i64* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %30
  %47 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* @rpc_garbage_args, align 8
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  store i32 1, i32* %3, align 4
  br label %160

50:                                               ; preds = %30, %2
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %52 = call i32 @nfsd_cache_lookup(%struct.svc_rqst* %51)
  switch i32 %52, label %56 [
    i32 129, label %53
    i32 128, label %54
    i32 130, label %55
  ]

53:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %160

54:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %160

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %50
  %57 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %58 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %65 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %63, i64 %71
  store i64* %72, i64** %9, align 8
  %73 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %74 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  %83 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %84 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %83, i32 0, i32 0
  %85 = load i64 (%struct.svc_rqst*, i32, i32)*, i64 (%struct.svc_rqst*, i32, i32)** %84, align 8
  %86 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %87 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %88 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %91 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i64 %85(%struct.svc_rqst* %86, i32 %89, i32 %92)
  store i64 %93, i64* %8, align 8
  %94 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %95 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @map_new_errors(i32 %96, i64 %97)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @nfserr_dropit, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %56
  %103 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %104 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102, %56
  %108 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %110 = load i32, i32* @RC_NOCACHE, align 4
  %111 = call i32 @nfsd_cache_update(%struct.svc_rqst* %109, i32 %110, i64* null)
  store i32 0, i32* %3, align 4
  br label %160

112:                                              ; preds = %102
  %113 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %114 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i64, i64* %8, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %9, align 8
  store i64 %118, i64* %119, align 8
  br label %121

121:                                              ; preds = %117, %112
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %126 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %152, label %129

129:                                              ; preds = %124, %121
  %130 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %131 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %130, i32 0, i32 1
  %132 = load i32 (%struct.svc_rqst*, i64*, i32)*, i32 (%struct.svc_rqst*, i64*, i32)** %131, align 8
  store i32 (%struct.svc_rqst*, i64*, i32)* %132, i32 (%struct.svc_rqst*, i64*, i32)** %7, align 8
  %133 = load i32 (%struct.svc_rqst*, i64*, i32)*, i32 (%struct.svc_rqst*, i64*, i32)** %7, align 8
  %134 = icmp ne i32 (%struct.svc_rqst*, i64*, i32)* %133, null
  br i1 %134, label %135, label %151

135:                                              ; preds = %129
  %136 = load i32 (%struct.svc_rqst*, i64*, i32)*, i32 (%struct.svc_rqst*, i64*, i32)** %7, align 8
  %137 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %138 = load i64*, i64** %9, align 8
  %139 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %140 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 %136(%struct.svc_rqst* %137, i64* %138, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %135
  %145 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %147 = load i32, i32* @RC_NOCACHE, align 4
  %148 = call i32 @nfsd_cache_update(%struct.svc_rqst* %146, i32 %147, i64* null)
  %149 = load i64, i64* @rpc_system_err, align 8
  %150 = load i64*, i64** %5, align 8
  store i64 %149, i64* %150, align 8
  store i32 1, i32* %3, align 4
  br label %160

151:                                              ; preds = %135, %129
  br label %152

152:                                              ; preds = %151, %124
  %153 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %154 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %155 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i64*, i64** %5, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 1
  %159 = call i32 @nfsd_cache_update(%struct.svc_rqst* %153, i32 %156, i64* %158)
  store i32 1, i32* %3, align 4
  br label %160

160:                                              ; preds = %152, %144, %107, %54, %53, %46
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfsd_cache_lookup(%struct.svc_rqst*) #1

declare dso_local i64 @map_new_errors(i32, i64) #1

declare dso_local i32 @nfsd_cache_update(%struct.svc_rqst*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
