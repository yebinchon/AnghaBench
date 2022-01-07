; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_mech.c_gss_import_v1_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_mech.c_gss_import_v1_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENCTYPE_DES_CBC_RAW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SGN_ALG_DES_MAC_MD5 = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@SEAL_ALG_DES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.krb5_ctx*)* @gss_import_v1_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_import_v1_context(i8* %0, i8* %1, %struct.krb5_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.krb5_ctx*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.krb5_ctx* %2, %struct.krb5_ctx** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %11, i32 0, i32 0
  %13 = call i8* @simple_get_bytes(i8* %9, i8* %10, i32* %12, i32 4)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %166

18:                                               ; preds = %3
  %19 = load i32, i32* @ENCTYPE_DES_CBC_RAW, align 4
  %20 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @get_gss_krb5_enctype(i32 %24)
  %26 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %26, i32 0, i32 6
  store i32* %25, i32** %27, align 8
  %28 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i8* @ERR_PTR(i32 %34)
  store i8* %35, i8** %5, align 8
  br label %166

36:                                               ; preds = %18
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr i8, i8* %37, i64 20
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ugt i8* %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr i8, i8* %42, i64 20
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ult i8* %43, %44
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ true, %36 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i8* @ERR_PTR(i32 %53)
  store i8* %54, i8** %5, align 8
  br label %166

55:                                               ; preds = %46
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr i8, i8* %56, i64 20
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @simple_get_bytes(i8* %58, i8* %59, i32* %8, i32 4)
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %166

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @SGN_ALG_DES_MAC_MD5, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* @ENOSYS, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i8* @ERR_PTR(i32 %71)
  store i8* %72, i8** %5, align 8
  br label %166

73:                                               ; preds = %65
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i8* @simple_get_bytes(i8* %74, i8* %75, i32* %8, i32 4)
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %166

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @SEAL_ALG_DES, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @ENOSYS, align 4
  %87 = sub nsw i32 0, %86
  %88 = call i8* @ERR_PTR(i32 %87)
  store i8* %88, i8** %5, align 8
  br label %166

89:                                               ; preds = %81
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %92, i32 0, i32 1
  %94 = call i8* @simple_get_bytes(i8* %90, i8* %91, i32* %93, i32 4)
  store i8* %94, i8** %5, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %166

99:                                               ; preds = %89
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %103 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %102, i32 0, i32 2
  %104 = call i8* @simple_get_bytes(i8* %100, i8* %101, i32* %103, i32 4)
  store i8* %104, i8** %5, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %166

109:                                              ; preds = %99
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %113 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %112, i32 0, i32 3
  %114 = call i8* @simple_get_netobj(i8* %110, i8* %111, %struct.TYPE_2__* %113)
  store i8* %114, i8** %5, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @IS_ERR(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %166

119:                                              ; preds = %109
  %120 = load i8*, i8** %5, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %123 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %124 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %123, i32 0, i32 4
  %125 = call i8* @get_key(i8* %120, i8* %121, %struct.krb5_ctx* %122, i32* %124)
  store i8* %125, i8** %5, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = call i64 @IS_ERR(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %160

130:                                              ; preds = %119
  %131 = load i8*, i8** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %134 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %135 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %134, i32 0, i32 5
  %136 = call i8* @get_key(i8* %131, i8* %132, %struct.krb5_ctx* %133, i32* %135)
  store i8* %136, i8** %5, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = call i64 @IS_ERR(i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %155

141:                                              ; preds = %130
  %142 = load i8*, i8** %5, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = icmp ne i8* %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* @EFAULT, align 4
  %147 = sub nsw i32 0, %146
  %148 = call i8* @ERR_PTR(i32 %147)
  store i8* %148, i8** %5, align 8
  br label %150

149:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %169

150:                                              ; preds = %145
  %151 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %152 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @crypto_free_blkcipher(i32 %153)
  br label %155

155:                                              ; preds = %150, %140
  %156 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %157 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @crypto_free_blkcipher(i32 %158)
  br label %160

160:                                              ; preds = %155, %129
  %161 = load %struct.krb5_ctx*, %struct.krb5_ctx** %7, align 8
  %162 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @kfree(i32 %164)
  br label %166

166:                                              ; preds = %160, %118, %108, %98, %85, %80, %69, %64, %51, %32, %17
  %167 = load i8*, i8** %5, align 8
  %168 = call i32 @PTR_ERR(i8* %167)
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %166, %149
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i8* @simple_get_bytes(i8*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32* @get_gss_krb5_enctype(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @simple_get_netobj(i8*, i8*, %struct.TYPE_2__*) #1

declare dso_local i8* @get_key(i8*, i8*, %struct.krb5_ctx*, i32*) #1

declare dso_local i32 @crypto_free_blkcipher(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
