; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_give_up_callbacks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_give_up_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i64, i32, i32, %struct.afs_callback*, i32, i32 }
%struct.afs_callback = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"{%zu},\00", align 1
@AFSCBMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"break %zu callbacks\00", align 1
@afs_RXFSGiveUpCallBacks = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSGIVEUPCALLBACKS = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_give_up_callbacks(%struct.afs_server* %0, %struct.afs_wait_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_server*, align 8
  %5 = alloca %struct.afs_wait_mode*, align 8
  %6 = alloca %struct.afs_call*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.afs_callback*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %4, align 8
  store %struct.afs_wait_mode* %1, %struct.afs_wait_mode** %5, align 8
  %12 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %13 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %16 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %19 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %18, i32 0, i32 3
  %20 = load %struct.afs_callback*, %struct.afs_callback** %19, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.afs_callback* %20)
  %22 = call i64 @CIRC_CNT(i32 %14, i64 %17, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %173

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @AFSCBMAX, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @AFSCBMAX, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %7, align 8
  %38 = mul i64 %37, 6
  %39 = mul i64 %38, 4
  %40 = add i64 12, %39
  %41 = trunc i64 %40 to i32
  %42 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSGiveUpCallBacks, i32 %41, i32 0)
  store %struct.afs_call* %42, %struct.afs_call** %6, align 8
  %43 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %44 = icmp ne %struct.afs_call* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %173

48:                                               ; preds = %34
  %49 = load i32, i32* @FS_SERVICE, align 4
  %50 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @AFS_FS_PORT, align 4
  %53 = call i32 @htons(i32 %52)
  %54 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i64, i64* %7, align 8
  %62 = mul i64 %61, 3
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %9, align 8
  %64 = load i64, i64* @FSGIVEUPCALLBACKS, align 8
  %65 = call i8* @htonl(i64 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %69 = load i64, i64* %7, align 8
  %70 = call i8* @htonl(i64 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i64, i64* %7, align 8
  %75 = call i8* @htonl(i64 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %81 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %80, i32 0, i32 4
  %82 = call i32 @atomic_sub(i64 %79, i32* %81)
  %83 = load i64, i64* %7, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %155, %48
  %86 = load i32, i32* %10, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %158

88:                                               ; preds = %85
  %89 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %90 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %89, i32 0, i32 3
  %91 = load %struct.afs_callback*, %struct.afs_callback** %90, align 8
  %92 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %93 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.afs_callback, %struct.afs_callback* %91, i64 %94
  store %struct.afs_callback* %95, %struct.afs_callback** %11, align 8
  %96 = load %struct.afs_callback*, %struct.afs_callback** %11, align 8
  %97 = getelementptr inbounds %struct.afs_callback, %struct.afs_callback* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @htonl(i64 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %104 = load %struct.afs_callback*, %struct.afs_callback** %11, align 8
  %105 = getelementptr inbounds %struct.afs_callback, %struct.afs_callback* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @htonl(i64 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  %112 = load %struct.afs_callback*, %struct.afs_callback** %11, align 8
  %113 = getelementptr inbounds %struct.afs_callback, %struct.afs_callback* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @htonl(i64 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.afs_callback*, %struct.afs_callback** %11, align 8
  %121 = getelementptr inbounds %struct.afs_callback, %struct.afs_callback* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @htonl(i64 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  %127 = load %struct.afs_callback*, %struct.afs_callback** %11, align 8
  %128 = getelementptr inbounds %struct.afs_callback, %struct.afs_callback* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @htonl(i64 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %9, align 8
  store i32 %131, i32* %132, align 4
  %134 = load %struct.afs_callback*, %struct.afs_callback** %11, align 8
  %135 = getelementptr inbounds %struct.afs_callback, %struct.afs_callback* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i8* @htonl(i64 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %9, align 8
  store i32 %138, i32* %139, align 4
  %141 = call i32 (...) @smp_mb()
  %142 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %143 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, 1
  %146 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %147 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %146, i32 0, i32 3
  %148 = load %struct.afs_callback*, %struct.afs_callback** %147, align 8
  %149 = call i32 @ARRAY_SIZE(%struct.afs_callback* %148)
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = and i64 %145, %151
  %153 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %154 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %88
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %10, align 4
  br label %85

158:                                              ; preds = %85
  %159 = load i64, i64* %7, align 8
  %160 = icmp ugt i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @ASSERT(i32 %161)
  %163 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %164 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %163, i32 0, i32 2
  %165 = load i64, i64* %7, align 8
  %166 = call i32 @wake_up_nr(i32* %164, i64 %165)
  %167 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %168 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %167, i32 0, i32 1
  %169 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %170 = load i32, i32* @GFP_NOFS, align 4
  %171 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %5, align 8
  %172 = call i32 @afs_make_call(i32* %168, %struct.afs_call* %169, i32 %170, %struct.afs_wait_mode* %171)
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %158, %45, %27
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i64 @CIRC_CNT(i32, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.afs_callback*) #1

declare dso_local i32 @_enter(i8*, i64) #1

declare dso_local i32 @_debug(i8*, i64) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @wake_up_nr(i32*, i64) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
