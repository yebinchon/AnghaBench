; ModuleID = '/home/carl/AnghaBench/freebsd/bin/getfacl/extr_getfacl.c_acl_from_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/getfacl/extr_getfacl.c_acl_from_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ACL_USER_OBJ = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@ACL_READ = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ACL_WRITE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@ACL_OTHER = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.stat*)* @acl_from_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @acl_from_stat(%struct.stat* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.stat*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stat* %0, %struct.stat** %3, align 8
  %7 = call i32* @acl_init(i32 3)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %217

11:                                               ; preds = %1
  %12 = call i32 @acl_create_entry(i32** %4, i32* %5)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32* null, i32** %2, align 8
  br label %217

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ACL_USER_OBJ, align 4
  %18 = call i32 @acl_set_tag_type(i32 %16, i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %217

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @acl_get_permset(i32 %22, i32* %6)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32* null, i32** %2, align 8
  br label %217

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @acl_clear_perms(i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* null, i32** %2, align 8
  br label %217

31:                                               ; preds = %26
  %32 = load %struct.stat*, %struct.stat** %3, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_IRUSR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ACL_READ, align 4
  %41 = call i32 @acl_add_perm(i32 %39, i32 %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32* null, i32** %2, align 8
  br label %217

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.stat*, %struct.stat** %3, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @S_IWUSR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ACL_WRITE, align 4
  %55 = call i32 @acl_add_perm(i32 %53, i32 %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32* null, i32** %2, align 8
  br label %217

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %45
  %60 = load %struct.stat*, %struct.stat** %3, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @S_IXUSR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ACL_EXECUTE, align 4
  %69 = call i32 @acl_add_perm(i32 %67, i32 %68)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32* null, i32** %2, align 8
  br label %217

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @acl_set_permset(i32 %74, i32 %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32* null, i32** %2, align 8
  br label %217

79:                                               ; preds = %73
  %80 = call i32 @acl_create_entry(i32** %4, i32* %5)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32* null, i32** %2, align 8
  br label %217

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @ACL_GROUP_OBJ, align 4
  %86 = call i32 @acl_set_tag_type(i32 %84, i32 %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32* null, i32** %2, align 8
  br label %217

89:                                               ; preds = %83
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @acl_get_permset(i32 %90, i32* %6)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32* null, i32** %2, align 8
  br label %217

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @acl_clear_perms(i32 %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32* null, i32** %2, align 8
  br label %217

99:                                               ; preds = %94
  %100 = load %struct.stat*, %struct.stat** %3, align 8
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @S_IRGRP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ACL_READ, align 4
  %109 = call i32 @acl_add_perm(i32 %107, i32 %108)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32* null, i32** %2, align 8
  br label %217

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %99
  %114 = load %struct.stat*, %struct.stat** %3, align 8
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @S_IWGRP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @ACL_WRITE, align 4
  %123 = call i32 @acl_add_perm(i32 %121, i32 %122)
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32* null, i32** %2, align 8
  br label %217

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.stat*, %struct.stat** %3, align 8
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @S_IXGRP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @ACL_EXECUTE, align 4
  %137 = call i32 @acl_add_perm(i32 %135, i32 %136)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32* null, i32** %2, align 8
  br label %217

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %127
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @acl_set_permset(i32 %142, i32 %143)
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32* null, i32** %2, align 8
  br label %217

147:                                              ; preds = %141
  %148 = call i32 @acl_create_entry(i32** %4, i32* %5)
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32* null, i32** %2, align 8
  br label %217

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @ACL_OTHER, align 4
  %154 = call i32 @acl_set_tag_type(i32 %152, i32 %153)
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32* null, i32** %2, align 8
  br label %217

157:                                              ; preds = %151
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @acl_get_permset(i32 %158, i32* %6)
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i32* null, i32** %2, align 8
  br label %217

162:                                              ; preds = %157
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @acl_clear_perms(i32 %163)
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32* null, i32** %2, align 8
  br label %217

167:                                              ; preds = %162
  %168 = load %struct.stat*, %struct.stat** %3, align 8
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @S_IROTH, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %167
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @ACL_READ, align 4
  %177 = call i32 @acl_add_perm(i32 %175, i32 %176)
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i32* null, i32** %2, align 8
  br label %217

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %167
  %182 = load %struct.stat*, %struct.stat** %3, align 8
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @S_IWOTH, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @ACL_WRITE, align 4
  %191 = call i32 @acl_add_perm(i32 %189, i32 %190)
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32* null, i32** %2, align 8
  br label %217

194:                                              ; preds = %188
  br label %195

195:                                              ; preds = %194, %181
  %196 = load %struct.stat*, %struct.stat** %3, align 8
  %197 = getelementptr inbounds %struct.stat, %struct.stat* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @S_IXOTH, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %195
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @ACL_EXECUTE, align 4
  %205 = call i32 @acl_add_perm(i32 %203, i32 %204)
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i32* null, i32** %2, align 8
  br label %217

208:                                              ; preds = %202
  br label %209

209:                                              ; preds = %208, %195
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @acl_set_permset(i32 %210, i32 %211)
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  store i32* null, i32** %2, align 8
  br label %217

215:                                              ; preds = %209
  %216 = load i32*, i32** %4, align 8
  store i32* %216, i32** %2, align 8
  br label %217

217:                                              ; preds = %215, %214, %207, %193, %179, %166, %161, %156, %150, %146, %139, %125, %111, %98, %93, %88, %82, %78, %71, %57, %43, %30, %25, %20, %14, %10
  %218 = load i32*, i32** %2, align 8
  ret i32* %218
}

declare dso_local i32* @acl_init(i32) #1

declare dso_local i32 @acl_create_entry(i32**, i32*) #1

declare dso_local i32 @acl_set_tag_type(i32, i32) #1

declare dso_local i32 @acl_get_permset(i32, i32*) #1

declare dso_local i32 @acl_clear_perms(i32) #1

declare dso_local i32 @acl_add_perm(i32, i32) #1

declare dso_local i32 @acl_set_permset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
