; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_init_timeout_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_init_timeout_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_timeout = type { i32, i32, i32, i8*, i32 }

@HZ = common dso_local global i32 0, align 4
@NFS_DEF_TCP_RETRANS = common dso_local global i32 0, align 4
@NFS_DEF_TCP_TIMEO = common dso_local global i32 0, align 4
@NFS_MAX_TCP_TIMEOUT = common dso_local global i8* null, align 8
@NFS_DEF_UDP_RETRANS = common dso_local global i32 0, align 4
@NFS_DEF_UDP_TIMEO = common dso_local global i32 0, align 4
@NFS_MAX_UDP_TIMEOUT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_timeout*, i32, i32, i32)* @nfs_init_timeout_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_init_timeout_values(%struct.rpc_timeout* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rpc_timeout*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rpc_timeout* %0, %struct.rpc_timeout** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul i32 %9, %10
  %12 = udiv i32 %11, 10
  %13 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %17 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %144 [
    i32 129, label %19
    i32 130, label %19
    i32 128, label %104
  ]

19:                                               ; preds = %4, %4
  %20 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %21 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @NFS_DEF_TCP_RETRANS, align 4
  %26 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %27 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %30 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @NFS_DEF_TCP_TIMEO, align 4
  %35 = load i32, i32* @HZ, align 4
  %36 = mul i32 %34, %35
  %37 = udiv i32 %36, 10
  %38 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %39 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %42 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = zext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8*, i8** @NFS_MAX_TCP_TIMEOUT, align 8
  %47 = icmp ugt i8* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i8*, i8** @NFS_MAX_TCP_TIMEOUT, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %52 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %55 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %58 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %60 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %63 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %66 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul i32 %64, %67
  %69 = add i32 %61, %68
  %70 = zext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %73 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %75 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** @NFS_MAX_TCP_TIMEOUT, align 8
  %78 = icmp ugt i8* %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %53
  %80 = load i8*, i8** @NFS_MAX_TCP_TIMEOUT, align 8
  %81 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %82 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %53
  %84 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %85 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %88 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = zext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = icmp ult i8* %86, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %95 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = zext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %100 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %93, %83
  %102 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %103 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %102, i32 0, i32 4
  store i32 0, i32* %103, align 8
  br label %146

104:                                              ; preds = %4
  %105 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %106 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @NFS_DEF_UDP_RETRANS, align 4
  %111 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %112 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %115 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @NFS_DEF_UDP_TIMEO, align 4
  %120 = load i32, i32* @HZ, align 4
  %121 = mul i32 %119, %120
  %122 = udiv i32 %121, 10
  %123 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %124 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %118, %113
  %126 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %127 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = zext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = load i8*, i8** @NFS_MAX_UDP_TIMEOUT, align 8
  %132 = icmp ugt i8* %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load i8*, i8** @NFS_MAX_UDP_TIMEOUT, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %137 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %133, %125
  %139 = load i8*, i8** @NFS_MAX_UDP_TIMEOUT, align 8
  %140 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %141 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.rpc_timeout*, %struct.rpc_timeout** %5, align 8
  %143 = getelementptr inbounds %struct.rpc_timeout, %struct.rpc_timeout* %142, i32 0, i32 4
  store i32 1, i32* %143, align 8
  br label %146

144:                                              ; preds = %4
  %145 = call i32 (...) @BUG()
  br label %146

146:                                              ; preds = %144, %138, %101
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
