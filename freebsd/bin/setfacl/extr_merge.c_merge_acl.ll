; ModuleID = '/home/carl/AnghaBench/freebsd/bin/setfacl/extr_merge.c_merge_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/setfacl/extr_merge.c_merge_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [68 x i8] c"%s: branding mismatch; existing ACL is %s, entry to be merged is %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: acl_dup() failed\00", align 1
@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: acl_get_tag_type() failed - invalid ACL entry\00", align 1
@have_mask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: acl_get_tag_type() failed\00", align 1
@ACL_BRAND_NFS4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: acl_get_entry_type_np() failed\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: acl_get_permset() failed\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: acl_set_permset() failed\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: acl_set_entry_type_np() failed\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%s: acl_get_flagset_np() failed\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s: acl_set_flagset_np() failed\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%s: invalid tag type: %i\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: acl_create_entry_np() failed\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%s: acl_create_entry() failed\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"%s: acl_copy_entry() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_acl(i32* %0, i32** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %21, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @acl_get_brand_np(i32* %24, i32* %22)
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @acl_get_brand_np(i32* %27, i32* %23)
  %29 = load i32, i32* %22, align 4
  %30 = load i32, i32* %23, align 4
  %31 = call i64 @branding_mismatch(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %23, align 4
  %36 = call i32 @brand_name(i32 %35)
  %37 = load i32, i32* %22, align 4
  %38 = call i32 @brand_name(i32 %37)
  %39 = call i32 @warnx(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %36, i32 %38)
  store i32 -1, i32* %4, align 4
  br label %228

40:                                               ; preds = %3
  %41 = load i32**, i32*** %6, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @acl_dup(i32* %42)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %221, %49
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @acl_get_entry(i32* %52, i32 %53, i32* %8)
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %222

56:                                               ; preds = %51
  %57 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  store i32 %57, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @acl_get_tag_type(i32 %58, i32* %12)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @err(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 131
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* @have_mask, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  store i32 %69, i32* %18, align 4
  br label %70

70:                                               ; preds = %183, %117, %94, %68
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @acl_get_entry(i32* %71, i32 %72, i32* %9)
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %184

75:                                               ; preds = %70
  %76 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @acl_get_tag_type(i32 %77, i32* %12)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @acl_get_tag_type(i32 %84, i32* %13)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %70

95:                                               ; preds = %90
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* @ACL_BRAND_NFS4, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @acl_get_entry_type_np(i32 %100, i64* %14)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @acl_get_entry_type_np(i32 %107, i64* %15)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %15, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %70

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %95
  %120 = load i32, i32* %12, align 4
  switch i32 %120, label %179 [
    i32 129, label %121
    i32 133, label %121
    i32 128, label %128
    i32 132, label %128
    i32 130, label %128
    i32 131, label %128
    i32 134, label %128
  ]

121:                                              ; preds = %119, %119
  %122 = load i32, i32* %22, align 4
  %123 = call i32 @merge_user_group(i32* %8, i32* %9, i32 %122)
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %19, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %183

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %119, %119, %119, %119, %119, %127
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @acl_get_permset(i32 %129, i32* %10)
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @acl_set_permset(i32 %136, i32 %137)
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %140, %135
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* @ACL_BRAND_NFS4, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %178

147:                                              ; preds = %143
  %148 = load i32, i32* %8, align 4
  %149 = call i64 @acl_get_entry_type_np(i32 %148, i64* %14)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i32, i32* %9, align 4
  %156 = load i64, i64* %14, align 8
  %157 = call i32 @acl_set_entry_type_np(i32 %155, i64 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %159, %154
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @acl_get_flagset_np(i32 %163, i32* %16)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i8*, i8** %7, align 8
  %168 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %166, %162
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %16, align 4
  %172 = call i32 @acl_set_flagset_np(i32 %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174, %169
  br label %178

178:                                              ; preds = %177, %143
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %183

179:                                              ; preds = %119
  %180 = load i8*, i8** %7, align 8
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %178, %126
  br label %70

184:                                              ; preds = %70
  %185 = load i32, i32* %20, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %221

187:                                              ; preds = %184
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* @ACL_BRAND_NFS4, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = load i32, i32* %21, align 4
  %193 = call i32 @acl_create_entry_np(i32** %11, i32* %9, i32 %192)
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %196)
  %198 = load i32*, i32** %11, align 8
  %199 = call i32 @acl_free(i32* %198)
  store i32 -1, i32* %4, align 4
  br label %228

200:                                              ; preds = %191
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %212

203:                                              ; preds = %187
  %204 = call i32 @acl_create_entry(i32** %11, i32* %9)
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load i8*, i8** %7, align 8
  %208 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %207)
  %209 = load i32*, i32** %11, align 8
  %210 = call i32 @acl_free(i32* %209)
  store i32 -1, i32* %4, align 4
  br label %228

211:                                              ; preds = %203
  br label %212

212:                                              ; preds = %211, %200
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @acl_copy_entry(i32 %213, i32 %214)
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i8*, i8** %7, align 8
  %219 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %217, %212
  br label %221

221:                                              ; preds = %220, %184
  br label %51

222:                                              ; preds = %51
  %223 = load i32**, i32*** %6, align 8
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @acl_free(i32* %224)
  %226 = load i32*, i32** %11, align 8
  %227 = load i32**, i32*** %6, align 8
  store i32* %226, i32** %227, align 8
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %222, %206, %195, %33
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @acl_get_brand_np(i32*, i32*) #1

declare dso_local i64 @branding_mismatch(i32, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i32, i32) #1

declare dso_local i32 @brand_name(i32) #1

declare dso_local i32* @acl_dup(i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @acl_get_entry(i32*, i32, i32*) #1

declare dso_local i32 @acl_get_tag_type(i32, i32*) #1

declare dso_local i64 @acl_get_entry_type_np(i32, i64*) #1

declare dso_local i32 @merge_user_group(i32*, i32*, i32) #1

declare dso_local i32 @acl_get_permset(i32, i32*) #1

declare dso_local i32 @acl_set_permset(i32, i32) #1

declare dso_local i32 @acl_set_entry_type_np(i32, i64) #1

declare dso_local i32 @acl_get_flagset_np(i32, i32*) #1

declare dso_local i32 @acl_set_flagset_np(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @acl_create_entry_np(i32**, i32*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @acl_free(i32*) #1

declare dso_local i32 @acl_create_entry(i32**, i32*) #1

declare dso_local i32 @acl_copy_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
