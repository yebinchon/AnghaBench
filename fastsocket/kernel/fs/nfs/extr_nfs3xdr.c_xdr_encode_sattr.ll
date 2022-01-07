; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_xdr_encode_sattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_xdr_encode_sattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iattr = type { i32, i32, i32, i32, i32, i32, i64 }

@ATTR_MODE = common dso_local global i32 0, align 4
@xdr_one = common dso_local global i8* null, align 8
@S_IALLUGO = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i8* null, align 8
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@xdr_two = common dso_local global i8* null, align 8
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.iattr*)* @xdr_encode_sattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_encode_sattr(i32* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.iattr*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %5 = load %struct.iattr*, %struct.iattr** %4, align 8
  %6 = getelementptr inbounds %struct.iattr, %struct.iattr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ATTR_MODE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** @xdr_one, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %3, align 8
  store i32 %13, i32* %14, align 4
  %16 = load %struct.iattr*, %struct.iattr** %4, align 8
  %17 = getelementptr inbounds %struct.iattr, %struct.iattr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @S_IALLUGO, align 4
  %20 = and i32 %18, %19
  %21 = call i8* @htonl(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %3, align 8
  store i32 %22, i32* %23, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load i8*, i8** @xdr_zero, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %3, align 8
  store i32 %27, i32* %28, align 4
  br label %30

30:                                               ; preds = %25, %11
  %31 = load %struct.iattr*, %struct.iattr** %4, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATTR_UID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load i8*, i8** @xdr_one, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %3, align 8
  store i32 %39, i32* %40, align 4
  %42 = load %struct.iattr*, %struct.iattr** %4, align 8
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @htonl(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %3, align 8
  store i32 %46, i32* %47, align 4
  br label %54

49:                                               ; preds = %30
  %50 = load i8*, i8** @xdr_zero, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %3, align 8
  store i32 %51, i32* %52, align 4
  br label %54

54:                                               ; preds = %49, %37
  %55 = load %struct.iattr*, %struct.iattr** %4, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ATTR_GID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load i8*, i8** @xdr_one, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %3, align 8
  store i32 %63, i32* %64, align 4
  %66 = load %struct.iattr*, %struct.iattr** %4, align 8
  %67 = getelementptr inbounds %struct.iattr, %struct.iattr* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @htonl(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %3, align 8
  store i32 %70, i32* %71, align 4
  br label %78

73:                                               ; preds = %54
  %74 = load i8*, i8** @xdr_zero, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %3, align 8
  store i32 %75, i32* %76, align 4
  br label %78

78:                                               ; preds = %73, %61
  %79 = load %struct.iattr*, %struct.iattr** %4, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ATTR_SIZE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load i8*, i8** @xdr_one, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %3, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.iattr*, %struct.iattr** %4, align 8
  %92 = getelementptr inbounds %struct.iattr, %struct.iattr* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32* @xdr_encode_hyper(i32* %90, i32 %94)
  store i32* %95, i32** %3, align 8
  br label %101

96:                                               ; preds = %78
  %97 = load i8*, i8** @xdr_zero, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %3, align 8
  store i32 %98, i32* %99, align 4
  br label %101

101:                                              ; preds = %96, %85
  %102 = load %struct.iattr*, %struct.iattr** %4, align 8
  %103 = getelementptr inbounds %struct.iattr, %struct.iattr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ATTR_ATIME_SET, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load i8*, i8** @xdr_two, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %3, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %3, align 8
  store i32 %110, i32* %111, align 4
  %113 = load i32*, i32** %3, align 8
  %114 = load %struct.iattr*, %struct.iattr** %4, align 8
  %115 = getelementptr inbounds %struct.iattr, %struct.iattr* %114, i32 0, i32 5
  %116 = call i32* @xdr_encode_time3(i32* %113, i32* %115)
  store i32* %116, i32** %3, align 8
  br label %135

117:                                              ; preds = %101
  %118 = load %struct.iattr*, %struct.iattr** %4, align 8
  %119 = getelementptr inbounds %struct.iattr, %struct.iattr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ATTR_ATIME, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load i8*, i8** @xdr_one, align 8
  %126 = ptrtoint i8* %125 to i32
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %3, align 8
  store i32 %126, i32* %127, align 4
  br label %134

129:                                              ; preds = %117
  %130 = load i8*, i8** @xdr_zero, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = load i32*, i32** %3, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %3, align 8
  store i32 %131, i32* %132, align 4
  br label %134

134:                                              ; preds = %129, %124
  br label %135

135:                                              ; preds = %134, %108
  %136 = load %struct.iattr*, %struct.iattr** %4, align 8
  %137 = getelementptr inbounds %struct.iattr, %struct.iattr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ATTR_MTIME_SET, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load i8*, i8** @xdr_two, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = load i32*, i32** %3, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %3, align 8
  store i32 %144, i32* %145, align 4
  %147 = load i32*, i32** %3, align 8
  %148 = load %struct.iattr*, %struct.iattr** %4, align 8
  %149 = getelementptr inbounds %struct.iattr, %struct.iattr* %148, i32 0, i32 4
  %150 = call i32* @xdr_encode_time3(i32* %147, i32* %149)
  store i32* %150, i32** %3, align 8
  br label %169

151:                                              ; preds = %135
  %152 = load %struct.iattr*, %struct.iattr** %4, align 8
  %153 = getelementptr inbounds %struct.iattr, %struct.iattr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @ATTR_MTIME, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load i8*, i8** @xdr_one, align 8
  %160 = ptrtoint i8* %159 to i32
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %3, align 8
  store i32 %160, i32* %161, align 4
  br label %168

163:                                              ; preds = %151
  %164 = load i8*, i8** @xdr_zero, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32*, i32** %3, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %3, align 8
  store i32 %165, i32* %166, align 4
  br label %168

168:                                              ; preds = %163, %158
  br label %169

169:                                              ; preds = %168, %142
  %170 = load i32*, i32** %3, align 8
  ret i32* %170
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32* @xdr_encode_time3(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
