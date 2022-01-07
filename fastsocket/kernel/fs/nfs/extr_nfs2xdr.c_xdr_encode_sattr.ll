; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_xdr_encode_sattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_xdr_encode_sattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, i32, i32, i32, i32, i32, i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.iattr*)* @xdr_encode_sattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_encode_sattr(i32* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %6 = call i32 @__constant_htonl(i32 -1)
  store i32 %6, i32* %5, align 4
  %7 = load %struct.iattr*, %struct.iattr** %4, align 8
  %8 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ATTR_MODE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.iattr*, %struct.iattr** %4, align 8
  %15 = getelementptr inbounds %struct.iattr, %struct.iattr* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @htonl(i32 %16)
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %17, %13 ], [ %19, %18 ]
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %3, align 8
  store i32 %21, i32* %22, align 4
  %24 = load %struct.iattr*, %struct.iattr** %4, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ATTR_UID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.iattr*, %struct.iattr** %4, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @htonl(i32 %33)
  br label %37

35:                                               ; preds = %20
  %36 = load i32, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i32 [ %34, %30 ], [ %36, %35 ]
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %3, align 8
  store i32 %38, i32* %39, align 4
  %41 = load %struct.iattr*, %struct.iattr** %4, align 8
  %42 = getelementptr inbounds %struct.iattr, %struct.iattr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATTR_GID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.iattr*, %struct.iattr** %4, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @htonl(i32 %50)
  br label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %51, %47 ], [ %53, %52 ]
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %3, align 8
  store i32 %55, i32* %56, align 4
  %58 = load %struct.iattr*, %struct.iattr** %4, align 8
  %59 = getelementptr inbounds %struct.iattr, %struct.iattr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATTR_SIZE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.iattr*, %struct.iattr** %4, align 8
  %66 = getelementptr inbounds %struct.iattr, %struct.iattr* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @htonl(i32 %67)
  br label %71

69:                                               ; preds = %54
  %70 = load i32, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi i32 [ %68, %64 ], [ %70, %69 ]
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %3, align 8
  store i32 %72, i32* %73, align 4
  %75 = load %struct.iattr*, %struct.iattr** %4, align 8
  %76 = getelementptr inbounds %struct.iattr, %struct.iattr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ATTR_ATIME_SET, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.iattr*, %struct.iattr** %4, align 8
  %84 = getelementptr inbounds %struct.iattr, %struct.iattr* %83, i32 0, i32 2
  %85 = call i32* @xdr_encode_time(i32* %82, i32* %84)
  store i32* %85, i32** %3, align 8
  br label %106

86:                                               ; preds = %71
  %87 = load %struct.iattr*, %struct.iattr** %4, align 8
  %88 = getelementptr inbounds %struct.iattr, %struct.iattr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ATTR_ATIME, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.iattr*, %struct.iattr** %4, align 8
  %96 = getelementptr inbounds %struct.iattr, %struct.iattr* %95, i32 0, i32 2
  %97 = call i32* @xdr_encode_current_server_time(i32* %94, i32* %96)
  store i32* %97, i32** %3, align 8
  br label %105

98:                                               ; preds = %86
  %99 = load i32, i32* %5, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %3, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %3, align 8
  store i32 %102, i32* %103, align 4
  br label %105

105:                                              ; preds = %98, %93
  br label %106

106:                                              ; preds = %105, %81
  %107 = load %struct.iattr*, %struct.iattr** %4, align 8
  %108 = getelementptr inbounds %struct.iattr, %struct.iattr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ATTR_MTIME_SET, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.iattr*, %struct.iattr** %4, align 8
  %116 = getelementptr inbounds %struct.iattr, %struct.iattr* %115, i32 0, i32 1
  %117 = call i32* @xdr_encode_time(i32* %114, i32* %116)
  store i32* %117, i32** %3, align 8
  br label %138

118:                                              ; preds = %106
  %119 = load %struct.iattr*, %struct.iattr** %4, align 8
  %120 = getelementptr inbounds %struct.iattr, %struct.iattr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ATTR_MTIME, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.iattr*, %struct.iattr** %4, align 8
  %128 = getelementptr inbounds %struct.iattr, %struct.iattr* %127, i32 0, i32 1
  %129 = call i32* @xdr_encode_current_server_time(i32* %126, i32* %128)
  store i32* %129, i32** %3, align 8
  br label %137

130:                                              ; preds = %118
  %131 = load i32, i32* %5, align 4
  %132 = load i32*, i32** %3, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %3, align 8
  store i32 %131, i32* %132, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32*, i32** %3, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %3, align 8
  store i32 %134, i32* %135, align 4
  br label %137

137:                                              ; preds = %130, %125
  br label %138

138:                                              ; preds = %137, %113
  %139 = load i32*, i32** %3, align 8
  ret i32* %139
}

declare dso_local i32 @__constant_htonl(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32* @xdr_encode_time(i32*, i32*) #1

declare dso_local i32* @xdr_encode_current_server_time(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
