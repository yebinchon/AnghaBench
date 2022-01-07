; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_decode_sattr3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_decode_sattr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@NFS_OFFSET_MAX = common dso_local global i64 0, align 8
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.iattr*)* @decode_sattr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_sattr3(i32* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %7 = load %struct.iattr*, %struct.iattr** %4, align 8
  %8 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @ATTR_MODE, align 4
  %15 = load %struct.iattr*, %struct.iattr** %4, align 8
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %3, align 8
  %21 = load i32, i32* %19, align 4
  %22 = call i8* @ntohl(i32 %21)
  %23 = load %struct.iattr*, %struct.iattr** %4, align 8
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %13, %2
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %3, align 8
  %28 = load i32, i32* %26, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* @ATTR_UID, align 4
  %32 = load %struct.iattr*, %struct.iattr** %4, align 8
  %33 = getelementptr inbounds %struct.iattr, %struct.iattr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %3, align 8
  %38 = load i32, i32* %36, align 4
  %39 = call i8* @ntohl(i32 %38)
  %40 = load %struct.iattr*, %struct.iattr** %4, align 8
  %41 = getelementptr inbounds %struct.iattr, %struct.iattr* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %30, %25
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %3, align 8
  %45 = load i32, i32* %43, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i32, i32* @ATTR_GID, align 4
  %49 = load %struct.iattr*, %struct.iattr** %4, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %3, align 8
  %55 = load i32, i32* %53, align 4
  %56 = call i8* @ntohl(i32 %55)
  %57 = load %struct.iattr*, %struct.iattr** %4, align 8
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %47, %42
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %3, align 8
  %62 = load i32, i32* %60, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32, i32* @ATTR_SIZE, align 4
  %66 = load %struct.iattr*, %struct.iattr** %4, align 8
  %67 = getelementptr inbounds %struct.iattr, %struct.iattr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32* @xdr_decode_hyper(i32* %70, i64* %6)
  store i32* %71, i32** %3, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @NFS_OFFSET_MAX, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.iattr*, %struct.iattr** %4, align 8
  %78 = getelementptr inbounds %struct.iattr, %struct.iattr* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  br label %83

79:                                               ; preds = %64
  %80 = load i64, i64* @NFS_OFFSET_MAX, align 8
  %81 = load %struct.iattr*, %struct.iattr** %4, align 8
  %82 = getelementptr inbounds %struct.iattr, %struct.iattr* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %3, align 8
  %87 = load i32, i32* %85, align 4
  %88 = call i8* @ntohl(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %5, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* @ATTR_ATIME, align 4
  %93 = load %struct.iattr*, %struct.iattr** %4, align 8
  %94 = getelementptr inbounds %struct.iattr, %struct.iattr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %123

97:                                               ; preds = %84
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %122

100:                                              ; preds = %97
  %101 = load i32, i32* @ATTR_ATIME, align 4
  %102 = load i32, i32* @ATTR_ATIME_SET, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.iattr*, %struct.iattr** %4, align 8
  %105 = getelementptr inbounds %struct.iattr, %struct.iattr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %3, align 8
  %110 = load i32, i32* %108, align 4
  %111 = call i8* @ntohl(i32 %110)
  %112 = load %struct.iattr*, %struct.iattr** %4, align 8
  %113 = getelementptr inbounds %struct.iattr, %struct.iattr* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %3, align 8
  %117 = load i32, i32* %115, align 4
  %118 = call i8* @ntohl(i32 %117)
  %119 = load %struct.iattr*, %struct.iattr** %4, align 8
  %120 = getelementptr inbounds %struct.iattr, %struct.iattr* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %100, %97
  br label %123

123:                                              ; preds = %122, %91
  %124 = load i32*, i32** %3, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %3, align 8
  %126 = load i32, i32* %124, align 4
  %127 = call i8* @ntohl(i32 %126)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %5, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load i32, i32* @ATTR_MTIME, align 4
  %132 = load %struct.iattr*, %struct.iattr** %4, align 8
  %133 = getelementptr inbounds %struct.iattr, %struct.iattr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %162

136:                                              ; preds = %123
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %161

139:                                              ; preds = %136
  %140 = load i32, i32* @ATTR_MTIME, align 4
  %141 = load i32, i32* @ATTR_MTIME_SET, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.iattr*, %struct.iattr** %4, align 8
  %144 = getelementptr inbounds %struct.iattr, %struct.iattr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load i32*, i32** %3, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %3, align 8
  %149 = load i32, i32* %147, align 4
  %150 = call i8* @ntohl(i32 %149)
  %151 = load %struct.iattr*, %struct.iattr** %4, align 8
  %152 = getelementptr inbounds %struct.iattr, %struct.iattr* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i8* %150, i8** %153, align 8
  %154 = load i32*, i32** %3, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %3, align 8
  %156 = load i32, i32* %154, align 4
  %157 = call i8* @ntohl(i32 %156)
  %158 = load %struct.iattr*, %struct.iattr** %4, align 8
  %159 = getelementptr inbounds %struct.iattr, %struct.iattr* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i8* %157, i8** %160, align 8
  br label %161

161:                                              ; preds = %139, %136
  br label %162

162:                                              ; preds = %161, %130
  %163 = load i32*, i32** %3, align 8
  ret i32* %163
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
