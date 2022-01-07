; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_components_esc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_components_esc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"nfsd4_encode_components(%s)\0A\00", align 1
@nfserr_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i32**, i32*, i8, i8)* @nfsd4_encode_components_esc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_components_esc(i8 signext %0, i8* %1, i32** %2, i32* %3, i8 signext %4, i8 signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8 %0, i8* %8, align 1
  store i8* %1, i8** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8 %4, i8* %12, align 1
  store i8 %5, i8* %13, align 1
  %22 = load i32**, i32*** %10, align 8
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  store i32* %24, i32** %15, align 8
  store i32 0, i32* %17, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 4
  store i32 %29, i32* %27, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* @nfserr_resource, align 4
  store i32 %32, i32* %7, align 4
  br label %150

33:                                               ; preds = %6
  %34 = call i32 @WRITE32(i32 0)
  %35 = load i8*, i8** %9, align 8
  store i8* %35, i8** %18, align 8
  store i8* %35, i8** %19, align 8
  br label %36

36:                                               ; preds = %142, %33
  %37 = load i8*, i8** %19, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %144

40:                                               ; preds = %36
  store i32 0, i32* %21, align 4
  %41 = load i8*, i8** %18, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %12, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i8*, i8** %19, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i8*, i8** %19, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %13, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br label %60

60:                                               ; preds = %53, %48
  %61 = phi i1 [ false, %48 ], [ %59, %53 ]
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62
  %64 = load i8*, i8** %19, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %19, align 8
  br label %48

66:                                               ; preds = %60
  %67 = load i8*, i8** %19, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %20, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load i8*, i8** %20, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i8*, i8** %20, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* %8, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77, %73
  %85 = load i8*, i8** %18, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %18, align 8
  store i32 1, i32* %21, align 4
  br label %87

87:                                               ; preds = %84, %77, %66
  br label %88

88:                                               ; preds = %87, %40
  %89 = load i32, i32* %21, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i8*, i8** %19, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i8*, i8** %19, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* %8, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %100, %102
  br label %104

104:                                              ; preds = %97, %92
  %105 = phi i1 [ false, %92 ], [ %103, %97 ]
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106
  %108 = load i8*, i8** %19, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %19, align 8
  br label %92

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %88
  %112 = load i8*, i8** %19, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %111
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @XDR_QUADLEN(i32 %121)
  %123 = shl i32 %122, 2
  %124 = add nsw i32 %123, 4
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, %124
  store i32 %127, i32* %125, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @nfserr_resource, align 4
  store i32 %130, i32* %7, align 4
  br label %150

131:                                              ; preds = %120
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @WRITE32(i32 %132)
  %134 = load i8*, i8** %18, align 8
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @WRITEMEM(i8* %134, i32 %135)
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %142

139:                                              ; preds = %111
  %140 = load i8*, i8** %19, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %19, align 8
  br label %142

142:                                              ; preds = %139, %131
  %143 = load i8*, i8** %19, align 8
  store i8* %143, i8** %18, align 8
  br label %36

144:                                              ; preds = %36
  %145 = load i32*, i32** %14, align 8
  %146 = load i32**, i32*** %10, align 8
  store i32* %145, i32** %146, align 8
  %147 = load i32*, i32** %15, align 8
  store i32* %147, i32** %14, align 8
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @WRITE32(i32 %148)
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %144, %129, %31
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @dprintk(i8*, i8*) #1

declare dso_local i32 @WRITE32(i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @WRITEMEM(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
