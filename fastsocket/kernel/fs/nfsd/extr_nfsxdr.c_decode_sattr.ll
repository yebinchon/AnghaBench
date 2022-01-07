; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_decode_sattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_decode_sattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.iattr*)* @decode_sattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_sattr(i32* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %7 = load %struct.iattr*, %struct.iattr** %4, align 8
  %8 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @ntohl(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 65535
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* @ATTR_MODE, align 4
  %19 = load %struct.iattr*, %struct.iattr** %4, align 8
  %20 = getelementptr inbounds %struct.iattr, %struct.iattr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.iattr*, %struct.iattr** %4, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %17, %14, %2
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %3, align 8
  %29 = load i32, i32* %27, align 4
  %30 = call i32 @ntohl(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @ATTR_UID, align 4
  %34 = load %struct.iattr*, %struct.iattr** %4, align 8
  %35 = getelementptr inbounds %struct.iattr, %struct.iattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.iattr*, %struct.iattr** %4, align 8
  %40 = getelementptr inbounds %struct.iattr, %struct.iattr* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %26
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %3, align 8
  %44 = load i32, i32* %42, align 4
  %45 = call i32 @ntohl(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* @ATTR_GID, align 4
  %49 = load %struct.iattr*, %struct.iattr** %4, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.iattr*, %struct.iattr** %4, align 8
  %55 = getelementptr inbounds %struct.iattr, %struct.iattr* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %41
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %3, align 8
  %59 = load i32, i32* %57, align 4
  %60 = call i32 @ntohl(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i32, i32* @ATTR_SIZE, align 4
  %64 = load %struct.iattr*, %struct.iattr** %4, align 8
  %65 = getelementptr inbounds %struct.iattr, %struct.iattr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.iattr*, %struct.iattr** %4, align 8
  %70 = getelementptr inbounds %struct.iattr, %struct.iattr* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %56
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %3, align 8
  %74 = load i32, i32* %72, align 4
  %75 = call i32 @ntohl(i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %3, align 8
  %78 = load i32, i32* %76, align 4
  %79 = call i32 @ntohl(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %102

82:                                               ; preds = %71
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load i32, i32* @ATTR_ATIME, align 4
  %87 = load i32, i32* @ATTR_ATIME_SET, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.iattr*, %struct.iattr** %4, align 8
  %90 = getelementptr inbounds %struct.iattr, %struct.iattr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.iattr*, %struct.iattr** %4, align 8
  %95 = getelementptr inbounds %struct.iattr, %struct.iattr* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  %98 = mul nsw i32 %97, 1000
  %99 = load %struct.iattr*, %struct.iattr** %4, align 8
  %100 = getelementptr inbounds %struct.iattr, %struct.iattr* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %85, %82, %71
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %3, align 8
  %105 = load i32, i32* %103, align 4
  %106 = call i32 @ntohl(i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %3, align 8
  %109 = load i32, i32* %107, align 4
  %110 = call i32 @ntohl(i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %145

113:                                              ; preds = %102
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %145

116:                                              ; preds = %113
  %117 = load i32, i32* @ATTR_MTIME, align 4
  %118 = load i32, i32* @ATTR_MTIME_SET, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.iattr*, %struct.iattr** %4, align 8
  %121 = getelementptr inbounds %struct.iattr, %struct.iattr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.iattr*, %struct.iattr** %4, align 8
  %126 = getelementptr inbounds %struct.iattr, %struct.iattr* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* %6, align 4
  %129 = mul nsw i32 %128, 1000
  %130 = load %struct.iattr*, %struct.iattr** %4, align 8
  %131 = getelementptr inbounds %struct.iattr, %struct.iattr* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 1000000
  br i1 %134, label %135, label %144

135:                                              ; preds = %116
  %136 = load i32, i32* @ATTR_ATIME_SET, align 4
  %137 = load i32, i32* @ATTR_MTIME_SET, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load %struct.iattr*, %struct.iattr** %4, align 8
  %141 = getelementptr inbounds %struct.iattr, %struct.iattr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %135, %116
  br label %145

145:                                              ; preds = %144, %113, %102
  %146 = load i32*, i32** %3, align 8
  ret i32* %146
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
